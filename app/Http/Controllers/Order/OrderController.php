<?php
namespace App\Http\Controllers\Order;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Constants\NameConstant;
use App\Models\Order;
use App\Models\Product;

class OrderController extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->order_service =  new \App\Services\OrderService;
    }

    private function getOrderActionViewData($action, $actioName)
    {
        $data = $this->getDataActionView('orders', $action, $actioName);
        $data['listPaperSubs'] = getDataTable('p_substances', ['id', 'name'], 
            [['key'=>'act', 'compare'=>'=', 'value'=>1]], 0, 'name', 'asc', true);
        return $data;
    }

    public function insert(Request $request)
    {
        if (!$request->isMethod('POST')) {
            $data = $this->getOrderActionViewData('insert', 'Thêm');
            return view('orders.view', $data);    
        }else{
            if (!$this->admins->checkPermissionAction('orders', 'insert')) {
                echoJson(110, 'Bạn không có quyền thực hiện thao tác này!');
                return;
            }
            $dataInsert = $request->all();
            $dataInsertOrder = @$dataInsert['order']??[];
            if (count($dataInsertOrder)>0) {
                $orderId = $this->order_service->insertOrder($dataInsertOrder);
            }
            if ($orderId) {
                $status = $this->order_service->insertOrderDetail($dataInsert, $orderId);
                dd($status);
                if ($status) {
                    echoJson(200, 'Thêm đơn hàng thành công!');
                    return;
                }else{
                    echoJson(110, 'Đã xảy ra lỗi khi cấu hình lệnh!');
                    return;
                }
            }else{
                echoJson(110, 'Có lỗi khi thêm mới đơn hàng!');
                return;
            }
        }   
    }

    public function setListProductView()
    {
        if (!$this->admins->checkPermissionAction('orders', 'insert')) {
            return '403 : Lỗi quyền truy cập !';
        }
        $data['proQuantity'] = (int)@request('qty');
        $data['proName'] = !empty(request('name'))?request('name'):'Sản phẩm';
        $data['cDesignContacter'] = getFieldDataById('contacter', 'Customer', (int)@request('customer_id'));
        $data['listTypeProcate'] = NameConstant::PRO_CATE_TYPE;
        $data['listProCate'] = getDataTable('product_categories', '*', 
        [['key'=>'act', 'compare'=>'=', 'value'=>1]], 0, 'name', 'asc', true);
        return view('orders.list_products', $data);
    }

    public function update(Request $request, $id){
        if (!$request->isMethod('POST')) {
            $data = $this->getOrderActionViewData('update', 'Chi tiết');
            $data['dataItemOrder'] = Order::find($id);
            if (@$data['dataItemOrder']['id']) {
                $data['dataViewProductList'] = $this->admins->getBaseTable('products');
                $data['listDataProduct'] = Product::where('order_id', $id)->get()->toArray();
            }
            return view('orders.view', $data);
        }
    }
}
?>