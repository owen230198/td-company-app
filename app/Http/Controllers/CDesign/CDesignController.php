<?php
    namespace App\Http\Controllers\CDesign;
    use App\Http\Controllers\Controller;
    use Illuminate\Http\Request;
    use App\Models\CDesign;
    use App\Models\Order;
    use App\Models\Product;

    class CDesignController extends Controller
    {
        function __construct()
        {
            parent::__construct();
            $this->services = new \App\Services\CDesignService;
            $this->quote_services = new \App\Services\QuoteService;
            $this->order_services = new \App\Services\OrderService;
        }

        public function update(Request $request, $id){
            $arr_command = CDesign::find($id);
            if (!$request->isMethod('POST')) {
                $data['data_order'] = Order::find($arr_command['order']);
                $data['products'] = Product::where('id', $arr_command['product'])->get()->toArray();
                $data['data_command'] = $arr_command;
                $data['id'] = $id;
                $data['title'] = 'Cập nhật & Xác nhận lệnh - '.$arr_command['code'];
                $data['link_action'] = url('update/c_designs/'.$id);
                if ($arr_command['status'] == \StatusConst::NOT_ACCEPTED) {
                    $data['stage'] = Order::TO_DESIGN;
                }
                return view('c_designs.view', $data);
            }else{
                $data = $request->input('product');
                return $this->services->processDataCommand($data, $arr_command);       
            }
        }

    }
?>