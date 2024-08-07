<?php

namespace App\Http\Controllers\OtherWarehouse;

use App\Http\Controllers\Controller;
use App\Models\OtherWarehouse;

class OtherWarehouseController extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->services = new \App\Services\WarehouseService('other_warehouses');
    }
    public function insert($request)
    {
        $param = $request->except('_token');
        if ($request->isMethod('GET')) {
            return $this->services->insert($param);
        }else{
            $data = @$param['warehouse'] ?? [];
            if (empty($data['type'])) {
                return returnMessageAjax(100, 'Vui lòng chọn loại vật tư !');
            }
            if (empty($data['name'])) {
                return returnMessageAjax(100, 'Vui lòng nhập tên vật tư !');
            }
            if (OtherWarehouse::where($data)->count() > 0) {
                return returnMessageAjax(100, 'Vật tư '.$data['name'].' đã có trong kho !');
            }
            return $this->services->insert($param, 1);
        }
    }

    public function update($request, $id)
    {
        $param = $request->except('_token');
        if (!$request->isMethod('POST')) {
            return $this->services->update($param, $id);
        }else{
            $data = @$param['warehouse'] ?? [];
            return $this->services->update($param, $id, 1);
        }
    }
}
