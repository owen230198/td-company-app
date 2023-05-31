<?php
namespace App\Services;
use App\Services\BaseService;
use \App\Models\NDetailTable;
class AdminService extends BaseService
{
    function __construct()
    {
    	parent::__construct();
        $this->quote_service = new \App\Services\QuoteService;
    }

    public function checkPermissionAction($param)
    {
        if($this->group_user::isAdmin());
            return ['allow' => true];
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

    public function logActionUserData($action, $table, $id)
    {
        return true;
    }

    public function checkRoleUpdatePermission($module, $dataRole)
    {
        $admin = getSessionUser();
        if (@$admin['super_admin']) {
            return true;
        }
        $permissions = $this->roles->select('json_data_role')->where('module_id', $module)
        ->where('group_user', @$admin['group_user'])->first();
        if ($permissions == null) {
            return false;
        }
        $arrRole = !empty($permissions['json_data_role'])?json_decode($permissions['json_data_role'], true):[];
        if (empty($arrRole)) {
            return false;
        }
        $ret = true;
        foreach ($dataRole as $key => $value) {
            if (!array_key_exists($key, $arrRole) || empty($arrRole[$key])) {
                $ret = false;
                break;
            }
        }
        return $ret;
    }

    public function getTableItem($table)
    {
        $data = \App\Models\NTable::where('name', $table)->first();
        if (!empty($data)) {
            $data['insert'] = json_decode($data['insert'], true);
            $data['update'] = json_decode($data['update'], true);
            $data['remove'] = json_decode($data['remove'], true);
            $data['copy'] = json_decode($data['copy'], true);
        }
        return $data;
    }

    public function getFieldAction($table, $action = 'view')
    {
        return NDetailTable::where(['act' => 1, 'table_map'=> $table, $action => 1])->orderBy('ord', 'asc')->get()->toArray();
    }

    public function handleDataFieldShow($field_shows)
    {
        $rowspan = 1;
        foreach ($field_shows as $key => $field) {
            if($field['parent'] == 0 && $field['type'] == 'group'){
                $rowspan = 2;
                $field_shows[$key]['child'] = NDetailTable::where(['act' => 1, 'parent' => $field['id']])->orderBy('ord', 'asc')->get()->toArray();
                $field_shows[$key]['colspan'] = !empty($field_shows[$key]['child']) ? count($field_shows[$key]['child']) : 1;
            }
        }
        return ['rowspan' => $rowspan, 'field_shows' => $field_shows];
    }

    public function getDataActionView($table, $action, $action_name, $param = [])
    {
        $data['tableItem'] = $this->getTableItem($table);
        $data['title'] = $action_name.' '.$data['tableItem']['note'];
        $data['field_list'] = $this->getFieldAction($table, $action);
        $data['action_name'] = $action_name;
        $data['default_field'] = $param;
        $data['regions'] = $this->regions->getRegionOfTable($table);
        return $data;
    }

    public function getBaseTable($table)
    {
        $field_shows = $this->getFieldAction($table);
        $data = $this->handleDataFieldShow($field_shows);
    	$data['tableItem'] = $this->getTableItem($table);
        return $data;
    }

    public function getDataBaseView($table, $name='')
    {
        $data = $this->getBaseTable($table);
        $data['page_item'] = @$data['tableItem']['admin_paginate'] ?? 10;
        $data['view_type'] = @$data['tableItem']['view_type'] ?? 'view';
        $name = @$data['view_type'] == 'config' ? 'Cài đặt':$name;
        $data['title'] = $name.' '.$data['tableItem']['note'];
        if ($data['view_type']=='config') {
            $data['regions'] = $this->regions->getRegionOfConfig($table);
        }else{
            $data['field_searchs'] = NDetailTable::where(['act' => 1,'table_map' => $table, 'search' => 1])->orderBy('ord', 'asc')->get()->toArray();
        }
        return $data;
    }

    public function getConditionTable($table, $field_name, $value)
    {
        if (!empty($value)) {
            $field = NDetailTable::select('id', 'name', 'type', 'other_data')->where(['act' => 1, 'table_map' => $table, 'name' =>$field_name])->first();
            if (empty($field)) {
                $where[] = ['key' => $field_name, 'value' => $value];
            }else{
                $name = $field['name'];
                $type = $field['type'];
                if ($type == 'text') {
                    $tmp = ['key' => $name, 'compare' => 'like', 'value' => '%'.$value.'%'];
                    $where[] = $tmp;
                }elseif($type == 'child_linking'){
                $other_data = json_decode($field['other_data'], true);
                $linking_data = @$other_data['data'] ?? [];
                $field_title = @$linking_data['field_title'] ?? 'name';
                $field_query = @$linking_data['field_query'];
                $arr_id = \DB::table($linking_data['table'])->where('act', 1)->where($field_title, 'like', '%'.$value.'%')->pluck($field_query)->all();
                $where[] = ['key' => 'id', 'compare' => 'in', 'value' => array_unique($arr_id)];
                }elseif ($type == 'datetime') {
                    $date_range = explode(' - ', $value);
                    if (is_array($date_range)){
                        foreach ($date_range as $key => $str) {
                            $timstamp = strtotime(str_replace('/', '-', $str));
                            $date_time = date('Y-m-d H:i:s', $timstamp);
                            $compare_time = $key == 0 ? '>=' : '<=';
                            $tmp = ['key' => $name, 'compare' => $compare_time, 'value' => $date_time];
                            $where[] = $tmp;
                        }
                    }
                }else {
                    $where[] = ['key' => $field_name, 'value' => $value];
                }
            }
            return $where;
        }
    }

    public function doInsertTable($table, $data)
    {
        $process = $this->processDataBefore($data, $table);
        if (@$process['code'] == 100) {
            return $process;
        }
        $id = \DB::table($table)->insertGetId($process['data']);
        return ['code' =>  200, 'id' => $id];
    }

    public function doUpdateTable($id, $table, $data)
    {
        $process = $this->processDataBefore($data, $table);
        if (@$process['code'] == 100) {
            return $process;
        }
        $update = \DB::table($table)->where('id', $id)->update($process['data']);
        if ($update) {
            return returnMessageAjax(200, 'Cập nhật dữ liệu thành công!');
        }else{
            return returnMessageAjax(100, 'Không có thay đổi dữ liệu !');
        }
    }

    public function removeDataTable($table, $id)
    {
        $remove = \DB::table($table)->where('id', $id)->delete();
        if ($remove && in_array($table, \App\Models\NTable::$specific['insert'])) {
            $objService = getServiceByTable($table);
            if (method_exists($objService, 'afterRemove')) {
                $objService->afterRemove($id);
            }
        }
        return $remove;
    }
}
