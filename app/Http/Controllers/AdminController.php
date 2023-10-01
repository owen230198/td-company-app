<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Models\Customer;
use Illuminate\Http\Request;
use App\Models\NTable;
use App\Models\File;
use Illuminate\Support\Facades\Storage;
use Pion\Laravel\ChunkUpload\Handler\HandlerFactory;
use Pion\Laravel\ChunkUpload\Receiver\FileReceiver;
use Illuminate\Support\Facades\Schema;
class AdminController extends Controller
{
    static $view_where = array();
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        return redirect('/');
    }

    public function permissionError()
    {
        return view('403');
    }

    public function pageNotFound()
    {
        return view('404');
    }

    public function injectViewWhereParam($table, $arr)
    {
        foreach ($arr as $key => $value) {
            $conditions = $this->admins->getConditionTable($table, $key, $value);
            if (!empty($conditions)) {
                foreach ($conditions as $condition) {
                    static::$view_where[] = $condition;
                }
            }
        }
    }

    public function view(Request $request, $table)
    {
        $role = $this->admins->checkPermissionAction($table, __FUNCTION__);
        if (!@$role['allow']) {
            return redirect(url(''))->with('error', 'Bạn không có quyền truy cập!');
        }
        $data = $this->admins->getDataBaseView($table, 'Danh sách');
        if (empty($data)) {
            return back()->with('error', 'Giao diện chưa hỗ trợ !');
        }
        $order = 'id';
        $order_by = 'desc';
        if($data['view_type'] == 'config'){
            $data['action_url'] = url('do-config-data/'.$table);
            $order = 'ord';
            $order_by = 'asc';   
        }else{
            $default_data = $request->input('default_data');
            if (!empty($default_data)) {
                $param_default = json_decode($default_data, true);
                $this->injectViewWhereParam($table, $param_default);
                $data['param_default'] = $default_data;
                $data['default_field'] = $param_default;
                $data['param_action'] = getParamUrlByArray($param_default);
            }
            if ($request->input('nosidebar') == 1) {
                $data['nosidebar'] = 1;
            }
            $param =  $request->except('default_data', 'page', 'nosidebar');
            if (!empty($param)) {
                $data['data_search'] = $param;
                $this->injectViewWhereParam($table, $param);
            }
            if(!empty($role['where'])){
                static::$view_where[] = $role['where'];
            }
        }
        $data['data_tables'] = getDataTable($table, self::$view_where, ['paginate' => $data['page_item'], 'order' => $order, 'order_by' => $order_by]);
        session()->put('back_url', url()->full());    
        return view('table.'.$data['view_type'], $data);
    }

    public function configDevicePrice(Request $request, $step){
        if (!$request->isMethod('POST')) {
            if (!\GroupUser::isAdmin()) {
                return back()->with('error', 'Không có quyền truy cập !');
            }
            if ($step == 'supply_types') {
                $data['type'] = $request->input('type');
                if ($data['type'] == 'devices') {
                    $data['title'] = 'Danh sách thiết bị máy theo vật tư';
                }else{
                    $data['title'] = 'Danh sách chất liệu & vật tư sản xuất';   
                }
                $data['supply'] = \TDConst::HARD_ELEMENT;
            }elseif ($step = 'print_techs') {
                $data['title'] = 'Danh sách thiết bị máy in theo công nghệ in';
                $data['supply'] = \TDConst::PRINT_TECH;
                unset($data['supply'][0]);
            }
            return view('config_devices/'.$step.'/view', $data);
        }
    }

    public function warehouseManagement()
    {
        if (\GroupUser::isAdmin() || \GroupUser::isWarehouse()) {
            $data['title'] = 'Quản lí vật tư trong kho';
            $data['supply_list'] = [
                ['note' => 'Giấy in', 'table' => 'print_warehouses', 'type' => \TDConst::PAPER],
                ['note' => 'Màng nilon', 'table' => 'square_warehouses', 'type' => \TDConst::NILON],
                ['note' => 'Màng metalai', 'table' => 'square_warehouses', 'type' => \TDConst::METALAI],
                ['note' => 'Màng phủ metalai', 'table' => 'square_warehouses', 'type' => \TDConst::COVER],
                ['note' => 'Vật tư carton', 'table' => 'supply_warehouses', 'type' => \TDConst::CARTON],
                ['note' => 'Vật tư cao su non', 'table' => 'supply_warehouses', 'type' => \TDConst::RUBBER],
                ['note' => 'Vật tư mút phẳng', 'table' => 'supply_warehouses', 'type' => \TDConst::STYRO],
                ['note' => 'Vật tư đề can nhung', 'table' => 'square_warehouses', 'type' => \TDConst::DECAL],
                ['note' => 'Vật tư vải lụa', 'table' => 'square_warehouses', 'type' => \TDConst::SILK],
                ['note' => 'Vật tư mica', 'table' => 'supply_warehouses', 'type' => \TDConst::MICA],
                ['note' => 'Vật tư nam châm', 'table' => 'other_warehouses', 'type' => \TDConst::MAGNET]
            ];
            return view('warehouses.view', $data); 
        }else{
            return back()->with('error', 'Không có quyền truy cập !');    
        }
    }

    public function listWorkerByDevice(Request $request, $step)
    {
        if (\GroupUser::isAdmin()) {
            $data['step'] = $step;
            if ($step == 'machine') {
                $data['title'] = 'Danh sách tổ máy';
                $data['list_data'] = \TDConst::ALL_DEVICE_KEY;
            }else{
                $data['title'] = 'Danh sách nhóm thiết bị';
                $data['parent_url'] = ['link' => 'list-worker-by-device/machine', 'note' => 'DS tổ máy'];
                $type = $request->input('type');
                $data['list_data'] = getDeviceByKeyType($type);
                if (!empty($data['list_data'][0])) {
                    unset($data['list_data'][0]);
                }
                $data['type'] = $type;
                $data['table_device'] = $type == \TDConst::PRINT ? 'printers' : 'devices';
            }
            return view('group_workers.view', $data);
        }else{
            return back()->with('error', 'Không có quyền truy cập !');
        }
    }

    public function searchTable(Request $request, $table)
    {
        return $this->view($request, $table);
    }

    public function insert(Request $request, $table)
    {
        $role = $this->admins->checkPermissionAction($table, __FUNCTION__);
        if (empty($role['allow'])) {
            return customReturnMessage(false, $request->isMethod('POST'), ['message' => 'Không có quyền thao tác !']);
        }
        if (in_array($table, NTable::$specific[__FUNCTION__])) {
            $controller = getObjectByTable($table);
            if (method_exists($controller, __FUNCTION__)) {
                return $controller->insert($request);
            }else{
                return customReturnMessage(false, $request->isMethod('POST'), ['message' => 'Thao tác không hỗ trợ !']);
            }
        }else{
            $param = $request->except('_token');
            if ($request->isMethod('GET')) {
                $data = $this->admins->getDataActionView($table, __FUNCTION__, 'Thêm mới', $param);
                $data['action_url'] = url('insert/'.$table);
                return view('action.view', $data);
            }else{
                $status = $this->admins->doInsertTable($table, $param);
                if ($status['code'] == 200) {
                    $back_routes = @session()->get('back_url') ?? url('view/'.$table);
                    logActionUserData(__FUNCTION__, $table, $status['id'], $param);
                    return returnMessageAjax(200, 'Thêm dữ liệu thành công!', $back_routes);
                }else {
                    return returnMessageAjax(100, $status['message']);
                }
            }
        }
    }

    public function update(Request $request, $table, $id)
    {
        $dataItem = getModelByTable($table)->find($id);
        $action_role = $request->isMethod('GET') ? 'view' : __FUNCTION__;
        $role = $this->admins->checkPermissionAction($table, $action_role, $dataItem);
        if (!@$role['allow']) {
            return customReturnMessage(false, $request->isMethod('POST'), ['message' => 'Không có quyền thao tác !']);
        }
        if (in_array($table, NTable::$specific['update'])) {
            $controller = getObjectByTable($table);
            if (method_exists($controller, __FUNCTION__)) {
                return $controller->update($request, $id);
            }else{
                return customReturnMessage(false, $request->isMethod('POST'), ['message' => 'Thao tác không được hỗ trợ !']);
            }
        }else{
            $param = $request->except('_token');
            if ($request->isMethod('GET')) {
                $data = $this->admins->getDataActionView($table, 'update', 'Chi tiết', $param);
                $data['dataItem'] = $dataItem;
                $data['action_url'] = url('update/'.$table.'/'.$id);
                return view('action.view', $data);
            }else{
                $status = $this->admins->doUpdateTable($id, $table, $param);
                if ($status['code'] == 200) {
                    $back_routes = @session()->get('back_url') ?? url('view/'.$table);
                    logActionUserData(__FUNCTION__, $table, $id, $dataItem);
                    return returnMessageAjax(200, 'Cập nhật dữ liệu thành công!', $back_routes);
                }else {
                    return returnMessageAjax(100, $status['message']);
                }
            }
        }
    }

    public function clone(Request $request, $table, $id)
    {
        $role = $this->admins->checkPermissionAction($table, __FUNCTION__);
        if (empty($role['allow'])) {
            return customReturnMessage(false, $request->isMethod('POST'), ['message' => 'Không có quyền thao tác !']);
        }
        if (in_array($table, NTable::$specific['copy'])) {
            $controller = getObjectByTable($table);
            if (method_exists($controller, __FUNCTION__)) {
                return $controller->clone($request, $id);
            }else{
                return customReturnMessage(false, $request->isMethod('POST'), ['message' => 'Thao tác không hỗ trợ !']);
            }
        }else{
            $param = $request->except('_token');
            $data = $this->admins->getDataActionView($table, 'insert', 'Sao chép', $param);
            $data['dataItem'] = getModelByTable($table)->find($id);
            unset($data['dataItem']['id']);
            if (!empty($data['dataItem']['password'])) {
                unset($data['dataItem']['password']);
            }
            $data['action_url'] = url('insert/'.$table);
            return view('action.view', $data);
        }  
    }

    public function remove(Request $request){
        $data = $request->all();
        $id = $data['remove_id'];
        $table = $data['table'];
        $dataItem = \DB::table($table)->find($id);
        $role = $this->admins->checkPermissionAction($table, __FUNCTION__);
        $is_ajax = (boolean) $request->input('ajax');
        if (empty($role['allow'])) {
            return customReturnMessage(false, $is_ajax, ['message' => 'Không có quyền thao tác !']);
        }
        $success = $this->admins->removeDataTable($table, $id);
        if ($success) {
            return customReturnMessage(true, $is_ajax, ['message' => 'Xoá thành công dữ liệu !']);
        }else {
            return customReturnMessage(false, $is_ajax, ['message' => 'Đã có lỗi xảy ra !']);
        }
    }

    public function multipleRemove(Request $request)
    {
        $data = $request->all();
        $str_id = @$data['multi_remove_id']?$data['multi_remove_id']:'';
        if ($str_id == '') {
            return back()->with('error','Chưa có mục được chọn !');
        }
        $table = $data['table'];
        if (!\GroupUser::isAdmin()) {
            return back()->with('error','Không có quyền thực hiện thao tác này !');
        }
        $arr_id = explode(',', $str_id);
        foreach ($arr_id as $id) {
            $delete = $this->admins->removeDataTable($table, $id);
        }
        if ($delete) {
            return back()->with('message','Xóa dữ liệu thành công !');
        }else{
            return back()->with('error','Đã có lỗi xảy ra !');
        }
    }

    public function doConfigData($table, Request $request)
    {
        if (!$this->admins->checkPermissionAction($table, 'update')) {
            return returnMessageAjax(100, 'Bạn không có quyền thực hiện thao tác này !');
        }
        $post = $request->except('_token');
        $success = false;
        foreach ($post as $key => $value) {
            $data['value'] = $value;
            $success = \DB::table($table)->where('name', $key)->update($data);
        }
        if (isset($success)) {
            return returnMessageAjax(200, 'Cập nhật dữ liệu thành công !');
        }else {
            return returnMessageAjax(100, 'Có lỗi xảy ra, vui lòng thử lại !');
        }
    }

    public function optionChildData(Request $request, $table, $field)
    {
        $html = '<option value="">Danh sách chọn</option>';
        $parent = $request->input('param');
        if (!empty($parent)) {
            $data = \DB::table($table)->where(['act' => 1, $field => $parent])->orderBy('ord', 'asc')->get();
            foreach ($data as $item) {
                $html .= '<option value="'.@$item->id.'">'.@$item->name.'</option>';
            }
        }
        echo $html;
    }

    public function getDataJsonCustomer(Request $request)
    {
        $data = \DB::table('customers');
        $q = $request->input('q');
        return Customer::getDataJsonLinking($data, $q);     
    }

    public function getDataJsonLinking(Request $request)
    {
        $table = $request->input('table');
        $where = $request->except('table', 'q', 'field_search', 'except_linking', 'except_value');
        if (Schema::hasColumn($table, 'act')) {
            $where['act'] = 1;
        }
        $data = \DB::table($table)->where($where);
        if (!empty($request->input('except_value'))) {
            $except_value = json_decode($request->input('except_value'), true);
            $arr_except = !empty($except_value['value']) ? explode(',', $except_value['value']) : [];
            if (!empty($except_value['field']) && !empty($arr_except)) {
                $data = $data->whereNotIn($except_value['field'], $arr_except);
            }
        }
        $q = $request->input('q');
        $except_linking = $request->input('except_linking') == 1;
        if ($except_linking) {
            $model = getModelByTable($table);
            if (method_exists($model, 'getDataJsonLinking')) {
                return $model::getDataJsonLinking($data, $q);
            }
        }
        $label = $request->input('field_search');
        if (!empty($q)) {
            $data = $data->where($label, 'like', $q);
        }
        if (\Schema::hasColumn($table, 'ord')) {
            $data = $data->orderBy('ord', 'asc');
        }
        $data = $data->paginate(50)->all();
        $arr = array_map(function($item) use($label){
            $item_label = getlabelLinking($item, $label, true);
            return ['id' => @$item->id, 'label' => $item_label];
        }, $data);
        return json_encode($arr);
    }

    public function getListOptionAjax(Request $request, $table)
    {
        $options = '';
        $cvalue = $request->input('cvalue'); 
        $where = $request->except('cvalue');
        $where['act'] = 1;
        $data = \DB::table($table)->where($where);
        if (\Schema::hasColumn($table, 'ord')) {
            $data = $data->orderBy('ord', 'asc')->get();
        }else{
            $data = $data->orderBy('name', 'asc')->get();    
        }
        if (!$data->isEmpty()) {
            $options = '<option value = "">Không xác định</option>';
            foreach ($data as $item) {
                if (@$item->id == $cvalue) {
                    $options .= '<option value = "'.@$item->id.'" selected>'.@$item->name.'</option>';
                }else{
                    $options .= '<option value = "'.@$item->id.'">'.@$item->name.'</option>';
                }
            }
        }
        echo $options;
    }

    public function fileUpload(Request $request)
    {
        $file = $request->file('file');
        $data['code'] = 100;
        $data['message'] = 'Không thể xử lí file !';
        if (!empty($file)) {
            $file_name = pathinfo($file->getClientOriginalName());
            $name = @$file_name['filename'];
            $file_ext = @$file_name['extension'];
            $dir = 'uploads/files';
            $table = $request->input('table');
            if (!empty($table)) {
                $dir .= '/'.$table;
            }
            $field = $request->input('field');
            if (!empty($field)) {
                $dir .= '/'.$field;
            }
            $name_upload = getNameFileUpload($dir, $name, $file_ext, true, false);
            $status = $file->move($dir ,$name_upload);
            $data['dir'] = $dir;
            $data['path'] = $dir.'/'.$name_upload;
            $data['name'] = $name;
            $data['ext_file'] = $file_ext;
            $data_insert = $data;
            unset($data_insert['code'], $data_insert['message']);
            $this->admins->configBaseDataAction($data_insert);
            $insert_id = File::insertGetId($data_insert);
            if ($status && $insert_id) {
                $data['code'] = 200;
                $data['id'] = $insert_id;
            }
        }
        return response()->json($data);
    }

    public function uploadChunnkedFile(Request $request)
    {
        $receiver = new FileReceiver('file', $request, HandlerFactory::classFromRequest($request));

        if (!$receiver->isUploaded()) {
            return returnMessageAjax(100, 'Không tìm thấy file upload!');
        }
        $fileReceived = $receiver->receive();
        if ($fileReceived->isFinished()) {
            $file = $fileReceived->getFile();
            $file_ext = $file->getClientOriginalExtension();
            $name = str_replace('.'.$file_ext, '', $file->getClientOriginalName());
            $dir = File::STORAGE_DIR;
            $name = getNameFileUpload($dir, $name, $file_ext, true);
            $disk = Storage::disk(config('filesystems.default'));
            $path = $disk->putFileAs('uploads', $file, $name);
            unlink($file->getPathname());
            $data['dir'] = $dir;
            $data['path'] = 'storage/' . $path;
            $data['name'] = $name;
            $data['ext_file'] = $file_ext;
            $this->admins->configBaseDataAction($data);
            $insert_id = File::insertGetId($data);
            $data['id'] = $insert_id;
            return $data;
        }
        // otherwise return percentage informatoin
        $handler = $fileReceived->handler();
        return [
            'done' => $handler->getPercentageDone(),
            'status' => true
        ];
    }

    
    public function fileDownload(Request $request)
    {
        $path = $request->input('path');
        $full_path = getFullPathFileUpload($path);
        if (file_exists($full_path)) {
            return response()->download($full_path);  
        }else{
            return back()->with('error', 'Không tìm thấy file !');
        } 
    }
}

