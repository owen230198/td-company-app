<?php
namespace App\Services;
class BaseService
{
 	function __construct(){
        $this->regions = new \App\Models\NRegion;
 	}

	public function configBaseDataAction(&$data, $key_login = 'user_login')
	{
		if (empty($data['id'])) {
			$data['created_by'] = @getSessionUser($key_login)['id'];
			$data['created_at'] = \Carbon\Carbon::now();
			$data['act'] = isset($data['act']) ? $data['act'] : 1;
		}
		$data['updated_at'] = \Carbon\Carbon::now();
	}

	public function validateDataTable($field, $attr, $value, $data)
	{
		$ret['code'] = 200;
		$note = mb_strtolower(@$field['note']);
		if (!empty($attr['required']) && $value == '') {
			$ret['code'] = 100;
			$ret['message'] = 'Dữ liệu '.$note.' không được để trống !';
			return $ret;
		}

		if (!empty($attr['unique'])) {
			$count = getCountDataTable($field['table_map'], [$field['name'] => $value]);
			$check_count = isset($data['id']) ? 1 : 0;
			if ($count > $check_count) {
				$ret['code'] = 100;
				$ret['message'] = $note. ' "'.$value.'" '.' đã tồn tại !';
				return $ret;
			}
		}
		return $ret;
	}

	public function processDataBefore($data, $table)
	{
		unset($data['created_at'], $data['updated_at']);
		foreach ($data as $key => $item) {
            $field = \App\Models\NDetailTable::select(['type', 'attr', 'note', 'name', 'table_map'])->where(['table_map'=>$table, 'name'=>$key])->first();
			$attr = !empty($field['attr']) ? json_decode($field['attr'], true) : [];
			$validation = $this->validateDataTable($field, $attr, $item, $data);
			if ($validation['code'] == 100) {
				return $validation;
				break;
			}
			if (@$field['type'] == 'datetime') {
				$data[$key] = getDataDateTime($item);
			}elseif (@$field['type'] == 'multiplelinking') {
				$data[$key] = json_encode($item);
			}elseif (@$attr['type_input'] == 'password') {
				$data[$key] = md5($data['password']);
			} 
        }
		$this->configBaseDataAction($data);
		return ['code' => 200, 'data' => $data];
	}
}