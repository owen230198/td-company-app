<?php
namespace App\Services;
use App\Constants\StattusConstant;
use App\Services\BaseService;
class AdminService extends BaseService
{ 
    function __construct()
    {
    	parent::__construct();
    }

    public function checkPermissionAction($table, $action)
    {
        $table = in_array($table, \App\Models\Quote::$tableChild)?'quotes':$table;
        $admin = getSessionUser();
        if (@$admin['super_admin']) {
            return true;     
        }
        $permissions = $this->roles->getPermissionAction($action, $table, @$admin['n_group_user_id']);
        return @$permissions[$action]?true:false;
    }

    public function checkListGroup($group, $list_group)
    {
        $ret = false;
        foreach ($list_group as $item) {
            if ($item['id']==$group) {
                $ret = true;
                break;  
            }
        }
        return $ret;
    }

    public function getTableItem($table)
    {
        $data = $this->list_tables->where('name', $table)->first();
        return $data;
    }

    public function getFieldAction($table, $action = 'view')
    {
        $data = $this->detail_tables->where('table_map', $table)->where('act', 1)->where($action, 1)->orderBy('ord', 'asc')->get();
        return $data;  
    }

    public function getBaseTable($table)
    {
    	$data['tableItem'] = $this->getTableItem($table); 
        $data['field_shows'] = $this->getFieldAction($table);
        return $data;
    }

    public function getDataBaseView($table, $name='')
    {
        $data = $this->getBaseTable($table);
        $data['page_item'] = isset($data['tableItem']['admin_paginate'])?$data['tableItem']['admin_paginate']:10;
        $data['view_type'] = isset($data['tableItem']['view_type'])?$data['tableItem']['view_type']:'view';
        $data['field_searchs'] = $this->detail_tables->where('table_map', $table)->where('act', 1)->where('search', 1)->orderBy('ord', 'asc')->get();
        $name = @$data['view_type']=='configs'?'Cài đặt':$name;
        $data['title'] = $name.' '.$data['tableItem']['note'];
        if ($data['view_type']=='configs') {
            $data['regions'] = $this->regions->getRegionOfConfig($table);
        }
        return $data;
    }

    public function getDataSearchTable($table, $get, $paginate = 10, $order = 'id', $order_by='desc')
    {
        $arrWhere = array();
        foreach ($get as $key => $where) {
            if (strpos($key, 'from_')!==false) {
                $field_id = str_replace('from_', '', $key);
                $compareTime = '>=';    
            }elseif (strpos($key, 'to_')!==false) {
                $field_id = str_replace('to_', '', $key);
                $compareTime = '<=';        
            }else {
                $field_id = (int)$key;   
            }
            $field = $this->detail_tables->select('id', 'name', 'view_type')->find($field_id);
            $name = $field['name'];
            $type = $field['view_type'];
            if ($type == 'text') {
                $tmp = array('key'=>$name, 'compare'=>'like', 'value'=>'%'.$where.'%');
                array_push($arrWhere, $tmp);       
            }elseif ($type == 'date_time') {
                $timstamp = strtotime($where);
                $date_time = date('y-m-d h:i:s', $timstamp);
                $tmp = array('key'=>$name, 'compare'=>$compareTime, 'value'=>$date_time);
                array_push($arrWhere, $tmp);       
            }else {
                if ($where != '') {
                    $tmp = array('key'=>$name, 'compare'=>"=", 'value'=>$where);
                    array_push($arrWhere, $tmp);        
                }    
            }
        }
        $data = getDataTable($table, '*', $arrWhere, $paginate);
        return $data;
    }

    private function getDataCustomerType($customer_id, $data)
    {
        if ($customer_id!=0) {
            return \App\Constants\NameConstant::OLD_CUSTOMER;
        }else{
            $dataInsert['name'] = @$data['company_name'];
            $dataInsert['contacter'] = @$data['contacter'];
            $dataInsert['address'] = @$data['address'];
            $dataInsert['email'] = @$data['email'];
            $dataInsert['phone'] = @$data['phone'];
            $dataInsert['act'] = 1;
            $this->doInsertTable('customers', $dataInsert);
            return \App\Constants\NameConstant::NEW_CUSTOMER;
        }
    }

    private function actionRoleByParent($group_id, $id, $action)
    {
        $extend_roles = $this->roles->where('n_group_user_id', $group_id)->get()->toArray();
        $data_action = $extend_roles!=null?$extend_roles:array();
        if (count($data_action)>0) {
            foreach ($data_action as $data) {
                unset($data['role_id']);
                if ($action=='insert') {
                    $data['n_group_user_id'] = $id;
                    $this->roles->insert($data);  
                }else{
                    unset($data['n_group_user_id']);
                    $this->roles->where(['n_group_user_id'=>$id, 'module_id'=>$data['module_id']])->update($data);     
                }  
            }
        }
    }

    public function doInsertTable($table, $data)
    {
        if (@$data['password']) {
            $data['password'] = md5($data['password']);    
        }
        if ($table=='quotes'&&isset($data['customer_id'])) {
            $data['customer_type'] = $this->getDataCustomerType($data['customer_id'], $data);
        }
        $data['created_at'] = date('y-m-d h:i:s', Time());
        $data['updated_at'] = date('y-m-d h:i:s', Time());
        $insertID = $this->db::table($table)->insertGetId($data);
        if ($table=='quotes') {
            $quote_service = new \App\Services\QuoteService;
            $quote_service->refreshQuoteTotal($insertID);
        }
        if ($table == 'n_group_users' && @$data['parent']) {
            $this->actionRoleByParent($data['parent'], $insertID, 'insert');    
        }
        return $insertID;
    }

    private function getPasswordUpdate($table, $id, $password)
    {
        $data = $this->db::table($table)->find($id);
        $new_pass = $password==$data->password?$password:md5($password);
        return $new_pass;
    }

    public function doUpdateTable($id, $table, $data)
    {
        if (@$data['password']) {
            $data['password'] = $this->getPasswordUpdate($table, $id, $data['password']);    
        }
        if ($table=='quotes'&&isset($data['customer_id'])) {
            $data['customer_type'] = $this->getDataCustomerType($data['customer_id'], $data);
        }
        if ($table == 'n_group_users' && @$data['parent']) {
            $this->actionRoleByParent($data['parent'], $id, 'update');    
        }
        $created_at = @$data['created_at']?strtotime($data['created_at']):Time();
        $data['created_at'] = date('y-m-d h:i:s',$created_at);
        $data['updated_at'] = date('y-m-d h:i:s', Time());
        $update = $this->db::table($table)->where('id', $id)->update($data);
        if ($table=='quotes') {
            $quote_service = new \App\Services\QuoteService;
            $quote_service->refreshQuoteTotal($id);
        }
        return $update;
    }

    public function removeDataTable($table, $id)
    {
        if ($table == 'n_group_users') {
            $this->roles->where('n_group_user_id', $id)->delete();    
        }
        if (in_array($table, \App\Models\Quote::$tableChild)) {
            $quote_id = getFieldDataById('quote_id', getClassByTable($table), $id);
        }
        $remove = $this->db::table($table)->where('id', $id)->delete();
        if ($remove&&in_array($table, \App\Models\Quote::$tableChild)) {
            $quote_service = new \App\Services\QuoteService;
            $quote_service->refreshQuoteTotal($quote_id);
        }
        return $remove;
    }

}
