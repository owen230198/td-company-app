<?php

namespace App\Models;

use App\Services\WarehouseService;
use Illuminate\Database\Eloquent\Model;

class ExtendWarehouse extends Model
{
    protected $table = 'extend_warehouses';
    protected $protectFields = false;
    protected $guarded = [];
    
    static function getRole()
    {
        $role = WarehouseService::ROLE;
        return !empty($role[\GroupUser::getCurrent()]) ? $role[\GroupUser::getCurrent()] : [];
    }
    
    static function getName($data)
    {
        return $data['name'];
    }

    public function afterRemove($id)
    {
        return WarehouseHistory::removeData('extend_warehouses', $id);
    }    
}
