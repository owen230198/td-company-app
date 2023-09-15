<?php
namespace App\Services\QTraits;

trait QSupplyTrait{

   public function getDataActionSupply($data, $type)
   {
      $this->newObjectSetProperty($data);
      $hard_compen_perc = (float) getDataConfig('QuoteConfig', 'CARTON_COMPEN_PERCENT');
      static::$supp_qty = ceil(calValuePercentPlus(self::$base_supp_qty, self::$base_supp_qty, $hard_compen_perc)); 
      
      if (!empty($data['size'])) {
         $data_action['size'] = $this->configDataSupplySize($data['size'], $type);
      }

      if (!empty($data['cut'])) {
         $data_action['cut'] = $this->configDataStage($data['cut']);
      }

      if (!empty($data['mill'])) {
         $data_action['mill'] = $this->configDataStage($data['mill'], @$data['name']);
      }

      if (!empty($data['elevate'])) {
         $data_action['elevate'] = $this->configDataStage($data['elevate']);
      }

      if (!empty($data['peel'])) {
         $data_action['peel'] = $this->configDataStage($data['peel']);
      }

      $data_action['total_cost'] = $this->priceCaculatedByArray($data_action);

      return $data_action;
   }

   private function configDataFill($fill)
   {
      $fill['qty_pro'] = self::$base_qty_pro;
      $fill['handle_qty'] = self::$base_qty_pro;
      $fill_cost = 0;
      $stage = !empty($fill['stage']) ? $fill['stage'] : [];
      foreach ($stage as $key => $item) {
         $qttv_id = !empty($item['materal']) ? $item['materal'] : 0;
         $qttv_price = (float) getFieldDataById('price', 'materals', $qttv_id);
         $fill['stage'][$key]['qttv_price'] = $qttv_price;
         $length = !empty($item['length']) ? $item['length'] : 0;
         $width = !empty($item['width']) ? $item['width'] : 0;
         $fill['stage'][$key]['cost'] = ($length * $width * $qttv_price); 
         if ( $fill['stage'][$key]['cost'] > 0) {
            $machine_id = !empty($item['machine']) ? $item['machine']  : 0;
            $data_machine = getDetailDataByID('Device', $machine_id);
            $work_price = (float) @$data_machine['work_price'];
            $shape_price = (float) @$data_machine['shape_price'];
            $fill['stage'][$key]['work_price'] = $work_price;
            $fill['stage'][$key]['shape_price'] = $shape_price;
            $fill['stage'][$key]['cost'] =  (($fill['stage'][$key]['cost'] + $work_price) * self::$base_qty_pro) + $shape_price;
         }
         $fill_cost += $fill['stage'][$key]['cost'];
      }
      $ext_price = !empty($fill['ext_price']) ? (float) $fill['ext_price'] : 0;
      $fill['fill_cost'] = $fill_cost;
      $total = $fill_cost + ($ext_price *self::$base_qty_pro);
      return $this->getObjectConfig($fill, $total);
   }

   private function configDataFinish($finish)
   {
      $stage = !empty($finish['stage']) ? $finish['stage'] : [];
      $finish_cost = 0;
      foreach ($stage as $key => $item) {
         $qttv_id = !empty($item['materal']) ? (int) $item['materal'] : 0;
         $qttv = getDetailDataByID('Device', $qttv_id);
         $qttv_price = !empty($qttv['work_price']) ? (float) $qttv['work_price'] : 0; 
         $finish['stage'][$key]['qttv_price'] = $qttv_price;
         $finish['stage'][$key]['cost'] = self::$base_qty_pro * $qttv_price;
         $finish_cost += $finish['stage'][$key]['cost'];
      }
      $ext_price = !empty($finish['ext_price']) ? (float) $finish['ext_price'] : 0;
      $total = $finish_cost + ($ext_price *self::$base_qty_pro);
      $finish['qty_pro'] = self::$base_qty_pro;
      $finish['handle_qty'] = self::$base_qty_pro;
      $finish['finish_cost'] = $finish_cost;
      return $this->getObjectConfig($finish, $total);
   }

   private function configDataMagnet($magnet)
   {
      $magnet_perc = (float) getDataConfig('QuoteConfig', 'MAGNET_PERC');
      $qttv_id = !empty($magnet['type']) ? $magnet['type'] : 0;
      $qttv = getDetailDataByID('Materal', $qttv_id);
      $qttv_price = @$qttv['price']?$qttv['price']:0;  
      $magnet['qttv_price'] = $qttv_price;
      $magnet['magnet_perc'] = $magnet_perc;
      $qty = !empty($magnet['qty']) ? $magnet['qty'] : 0; 
      $total = (self::$base_qty_pro * $qttv_price) * (($qty * $magnet_perc));
      $magnet['qty_pro'] = self::$base_qty_pro;
      return $this->getObjectConfig($magnet, $total);
   }

   public function getDataActionFillFinish($data)
   {
      $this->newObjectSetProperty($data);
      if (!empty($data['fill'])) {
         $data_action['fill'] = $this->configDataFill($data['fill']);
      }

      if (!empty($data['finish'])) {
         $data_action['finish'] = $this->configDataFinish($data['finish']);
      }

      if (!empty($data['magnet'])) {
         $data_action['magnet'] = $this->configDataMagnet($data['magnet']);
      }

      $data_action['total_cost'] = $this->priceCaculatedByArray($data_action);

      return $data_action;
   }
}