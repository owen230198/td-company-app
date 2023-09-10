<?php
namespace App\Modules\Worker\Services;
use App\Services\BaseService;
use App\Models\WSalary;

class WorkerService extends BaseService
{
	function __construct()
	{
		parent::__construct();
	}

    public function getListDataHome($worker, $where = [])
    {
        $type = @$worker['type'];
        $where['type'] = $type; 
        $where['status'] = \StatusConst::NOT_ACCEPTED;
        if (!in_array($type, [\TDConst::FILL, \TDConst::FINISH])) {
            $where['machine_type'] = @$worker['device'];
        }
        return getDataWorkerCommand($where);
    }

    public function receiveCommad($obj, $data_command, $worker)
    {
        if ($data_command->status != \StatusConst::NOT_ACCEPTED || !empty($data_command->worker)) {
            $mess = 'Lệnh này đang được xử lí ';
            if (!empty($data_command->worker_process)) {
                $mess .= 'tiếp nhận bởi : '.getFieldDataById('name', 'w_users', $data_command->worker_process);
            }
            return returnMessageAjax(100, $mess.'!');
        }
        $worker_id = $worker['id'];
        $type = $worker['type'];
        $arr_status = ['status' => \StatusConst::PROCESSING, 'worker' => $worker_id];
        if (getDataWorkerCommand($arr_status, true) > 0) {
            return returnMessageAjax(100, 'Bạn cần hoàn thành lệnh trước khi nhận lệnh mới !');
        }
        if ($data_command->type != $type || $data_command->machine_type != $worker['device']) {
            return returnMessageAjax(100, 'Bạn không thuộc tổ máy có thể nhận lệnh !');
        }
        $update = $obj->update($arr_status);
        if ($update) {
            return returnMessageAjax(200, 'Bạn đã tiếp nhận lệnh thành công, tới chi tiết lệnh để xác nhận !');
        }
    }

    public function detailCommand($data_command, $worker, $supply)
    {
        if (@$data_command->status == \StatusConst::SUBMITED) {
            return back()->with('error', 'Dữ liệu không hợp lệ !');
        }
        $data['supply'] = $supply;
        $data['data_command'] = $data_command;
        $data['all_devices'] = \TDConst::ALL_DEVICE_KEY;
        $data['title'] = 'Chi tiết lệnh sản xuất '.$data_command->command;
        $worker_type = @$worker['type'];
        $handle = !empty($supply->{$worker_type}) ? json_decode($supply->{$worker_type}, true) : [];
        $data['data_handle'] = WSalary::getHandleDataJson($worker_type, $handle, true);
        $data['data_product'] = \DB::table('products')->find($supply->product);
        $data['view_type'] = $worker_type;
        return view('Worker::commands.view', $data);
    }

    public function submitCommand($obj, $data_command, $worker, $supply, $qty){
        if ($data_command->worker != $worker['id']) {
            return returnMessageAjax(100, 'Chấm công không thành công, Lệnh này không phải của bạn !');
        }
        if($data_command->status != \StatusConst::PROCESSING){
            return returnMessageAjax(100, 'Dữ liệu không hợp lệ !');
        }
        $type = $worker['type'];
        $data_handle = !empty($supply->{$type}) ? json_decode($supply->{$type}, true) : [];
        $handle_qty = @$data_command->qty ?? 0;
        if ($qty > $handle_qty) {
            return returnMessageAjax(100, 'Số lượng chấm công không hợp lệ !');
        }elseif ((int) $qty == 0) {
            $data_update['status'] = \StatusConst::NOT_ACCEPTED;
            $data_update['worker'] = 0;
        }else{
            $obj_salary = new WSalary($supply, $data_handle, $worker);
            switch ($type) {
                case \TDConst::PRINT:
                    $data_update = $obj_salary->getPrintSalary($qty);
                    break;
                case \TDConst::NILON:
                    $data_update = $obj_salary->getNilonSalary($qty);
                    break;
                case \TDConst::COMPRESS:
                    $data_update = $obj_salary->getCompressSalary($qty);
                    break;
                case \TDConst::UV:
                    $data_update = $obj_salary->getUvSalary($qty);
                    break;
                case \TDConst::PEEL:
                    $data_update = $obj_salary->getPeelSalary($qty);
                    break;
                default:
                    return returnMessageAjax(100, 'Lỗi không xác định !');
                    break;
            }
            $data_update['status'] = \StatusConst::SUBMITED;
            $data_update['qty'] = $qty;
        }
        $update = $obj->update($data_update);
        if ($update) {
            $table_supply = $data_command->table_supply;
            $next_data = getStageActiveStartHandle($table_supply, $data_command->supply, $type);
            if ($next_data['type'] != \StatusConst::SUBMITED) {
                $where = ['table_supply' =>$table_supply, 'supply' => $supply->id, 'type' => $next_data['type'], 'status' => \StatusConst::NOT_ACCEPTED];
                $exist_command = WSalary::where($where)->first();
                if ($exist_command->count() == 0) {
                    $next_data['qty'] = $qty;
                    WSalary::commandStarted($data_command->command, $next_data, $table_supply, $supply);
                }else{
                    $exist_command->qty = (int) $exist_command->qty + $qty;
                    $exist_command->save();
                }
            }
            if ($qty != 0 && $qty < $handle_qty) {
                $re_insert['type'] = $type;
                $re_insert['machine_type'] = $data_command->machine_type;
                $re_insert['qty'] = $handle_qty - $qty;
                WSalary::commandStarted($data_command->command, $re_insert, $table_supply, $supply);
            }
            WSalary::checkStatusUpdate($table_supply, $supply->id, \StatusConst::SUBMITED);
            $arr_where = ['table_supply' =>$table_supply, 'supply' => $supply->id, 'type' => $type, 'status' => \StatusConst::SUBMITED];
            $submited_qty = \DB::table('w_salaries')->select('qty')->where($arr_where)->sum('qty');
            if ($submited_qty == (int) @$data_handle['handle_qty']) {
                $data_handle['act'] = 2;
                \DB::table($table_supply)->where('id', $supply->id)->update([$type => json_encode($data_handle)]);
            }
            return returnMessageAjax(200, 'Bạn đã chấm công thành công với số lượng : '.$qty.' !', url('Worker'));  
        }else{
            return returnMessageAjax(100, 'Có lỗi xảy ra, vui lòng thử chấm công lại !'); 
        }
    }
}
