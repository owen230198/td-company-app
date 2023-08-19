<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class PrintWarehouse extends Model
{
    protected $table = 'print_warehouses';
    protected $protectFields = false;  
    
    static function insertOverSupply($data, $supply, $size)
    {
        $data_whouse = $data;
        $data_whouse['type'] = $supply->type;
        $data_whouse['supp_type'] = @$size['supply_type'];
        $data_whouse['supp_price'] = @$size['supp_price'];
        $data_whouse['status'] = SupplyWarehouse::WAITING;
        $data_whouse['source'] = SupplyWarehouse::OVER;
        (new \BaseService)->configBaseDataAction($data_whouse);
        SupplyWarehouse::insert($data_whouse);
    }
}
