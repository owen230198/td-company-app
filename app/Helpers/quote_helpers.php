<?php

	if (!function_exists('getStepCreateQuote')) {
		function getStepCreateQuote($key){
			switch($key){
				case $key == 'chose_customer':
					return 'Chọn khách hàng (khách hàng cũ hoặc thêm khách hàng mới)';
					break;
				default:
					return 'Chi tiết sản xuất';
			};
		}
	}

	if (!function_exists('getDeviceId')) {
		function getDeviceId($where)
		{
			$where['act'] = 1;
			$device = \DB::table('devices')->select('id')->where($where)->first();
			return @$device->id ?? 0;
		}
	}

	if (!function_exists('getDefaultMateralIDByKey')) {
		function getDefaultMateralIDByKey($key)
		{
			$materal = \DB::table('materals')->select('id')->where(['act' => 1, 'type' => $key, 'default' => 1])->first();
			return @$materal->id;
		}
	}

	if (!function_exists('convertCmToMeter')) {
		function convertCmToMeter(&$length, &$width){
			// $length = $length/100;
			// $width = $width/100;
			$length = $length;
			$width = $width;
		}
	}

	if (!function_exists('isHardBox')) {
		function isHardbox($category)
		{
			return $category == \App\Models\ProductCategory::HARD_BOX;
		}
	}

	if (!function_exists('getTotalProductByArr')) {
		function getTotalProductByArr($products, $arr_quote = [], $get = '')
		{
			$ret = ['total_cost' => 0, 'total_amount' => 0];
			$profit_bool = $get == 'profit';
			foreach ($products as $product) {
				if (empty($product->parent)) {
					$product = (object) $product;
					$pwhere = ['act' => 1, 'product' => $product->id];
					$paper_total = \DB::table('papers')->select('total_cost')->where($pwhere)->sum('total_cost');
					$supply_total = \DB::table('supplies')->select('total_cost')->where($pwhere)->sum('total_cost');
					$fill_finish_total = \DB::table('fill_finishes')->select('total_cost')->where($pwhere)->sum('total_cost');
					$cost = (string) ($paper_total + $supply_total + $fill_finish_total);
				}else{
					$cost = $product->total_cost;
				}
				$round_number = $product->qty;
				$profit = (float) getFieldDataById('profit', 'products', $product->id);
				$ship_price = (float) getFieldDataById('ship_price', 'products', $product->id);
				$total_cost = round($cost / $round_number) * $round_number;
				$ex_products = \DB::table('products')->where('parent', $product->id)->get();
				$total_ex = getTotalProductByArr($ex_products, $arr_quote);
				$update['total_cost'] = $total_cost + $total_ex['total_cost'];
				$get_perc = (float) $update['total_cost'] + $ship_price;
				if ($profit_bool) {
					$current_total = $product->base_total;
					$ret['profit'] = (($current_total/$get_perc) * 100) -100;
				}else{
					$total_amount = $profit > 0 ? ($get_perc * ((100 + $profit) / 100)) : $get_perc;
					$update['base_total'] = $total_amount;
					$update['total_amount'] = round($total_amount / $round_number) * $round_number;
					\DB::table('products')->where('id', $product->id)->update($update);
					$ret['total_cost'] += $update['total_cost'];
					$ret['total_amount'] += $update['total_amount']; 
				}
			}
			return !empty($get) && !empty($ret[$get]) ? $ret[$get] : $ret;
		}
	}

	if (!function_exists('getProductTotalCost')) {
		function getProductTotalCost($arr_quote, $get = '')
		{
			$qwhere = ['act' => 1, 'quote_id' => $arr_quote['id']];
			$products = \DB::table('products')->where($qwhere)->get();
			$ret = getTotalProductByArr($products, $arr_quote);
			return !empty($get) && !empty($ret[$get]) ? $ret[$get] : $ret;
		}
	}

	if (!function_exists('RefreshQuotePrice')) {
		function RefreshQuotePrice($arr_quote){
			$update_quote = getProductTotalCost($arr_quote);
			\DB::table('quotes')->where('id', $arr_quote['id'])->update($update_quote);
		}
	}

	if (!function_exists('refreshProfit')) {
		function refreshProfit($arr_product)
		{
			foreach ($arr_product as $product) {
				$product_obj = \DB::table('products')->where('id', $product['id'])->get();
				$profit = getTotalProductByArr($product_obj, [], 'profit');
				\DB::table('products')->where('id', $product['id'])->update(['profit' => $profit]);
			}
		}
	}

	if (!function_exists('getDataProExportFile')) {
		function getDataProExportFile($product){
			$main_paper = \App\Models\Paper::where(['act' => 1, 'main' => 1, 'product' => $product['id']])->first();
            $ret['size'] = !empty($main_paper['size']) ? json_decode($main_paper['size'], true) : [];
            $ret['print'] = !empty($main_paper['print']) ? json_decode($main_paper['print'], true) : []; 
            $ret['nilon'] = !empty($main_paper['nilon']) ? json_decode($main_paper['nilon'], true) : [];
            $ret['compress'] = !empty($main_paper['compress']) ? json_decode($main_paper['compress'], true) : [];
            $ret['uv'] = !empty($main_paper['uv']) ? json_decode($main_paper['uv'], true) : [];
            $elevate = !empty($main_paper['elevate']) ? json_decode($main_paper['elevate'], true) : [];
            $ret['float'] = isHardBox($product['category']) ? json_decode(@$main_paper['float'], true) : @$elevate['float'];
			$data['main_paper'] = $main_paper;
			return $ret;
		}
	}

	if (!function_exists('getTextDataPaperStage')) {
		function getTextdataPaperStage($stage, $value)
		{
			switch ($stage) {
				case \TDConst::PRINT:
					return \TDConst::PRINT_TECH[$value];
					break;
				case \TDConst::NILON:
					return getFieldDataById('name', 'materals', @$value['materal']).' '. @$value['face'] . ' mặt ';
				case \TDConst::METALAI:
					$ret = getFieldDataById('name', 'materals', @$value['materal']).' '. @$value['face'] . ' mặt ';
					if (!empty($value['cover_materal']) && $value['cover_face']) {
						$ret .= ' - Phủ trên : '.getFieldDataById('name', 'materals', @$value['cover_materal']).' '. @$value['cover_face'] . ' mặt ';
					}
					return $ret;
				case \TDConst::NILON:
					return getFieldDataById('name', 'materals', @$value['materal']).' '. @$value['face'] . ' mặt ';
				case \TDConst::UV:
					return getFieldDataById('name', 'materals', @$value['materal']).' '. @$value['face'] . ' mặt ';
				default:
					return getFieldDataById('name', 'devices', @$value['machine']);
					break;
			}
		}
	}

	if (!function_exists('getPlusPaperNumber')) {
		function getPlusPaperNumber()
		{
			return (int) getDataConfig('QuoteConfig', 'PLUS_DIRECT') + (int) getDataConfig('QuoteConfig', 'PLUS_TO_PERCENT');
		}
	}

	if (!function_exists('getTextQuoteFinish')) {
		function getTextQuoteFinish($data)
		{
			$text = '';
			if (@$data['nilon']['act'] == 1) {
				$text .= "+ Cán nilon: ".getTextdataPaperStage(\TDConst::NILON, $data['nilon']);
			}

			if (@$data['compress']['act'] == 1) {
				$text .= "+ ép nhũ theo maket";
			}

			if (@$data['uv']['act'] == 1) {
				$text .= "+ in lưới UV ".mb_strtolower(getTextdataPaperStage(\TDConst::UV, $data['uv']))." theo maket";
			}

			if (@$data['float']['act'] == 1) {
				$text .= "+ thúc nổi sản phẩm";
			}
			return $text;
		}
	}