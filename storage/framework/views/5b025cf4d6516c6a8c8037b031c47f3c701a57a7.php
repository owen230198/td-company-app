<div class="quote_supp_item <?php echo e($supp_index > 0 ? ' mt-4 border_green p-3 radius_5' : ''); ?>" data-index=<?php echo e(@$supp_index ?? 0); ?>>
    <?php
        $key_supp = \TDConst::RUBBER;
        $rubber_compen_percent = (float) getDataConfig('QuoteConfig', 'CARTON_COMPEN_PERCENT');
        $rubber_divide = \TDConst::RUBBER_SIZE_DIVIDE;
        $rubber_plus = \TDConst::RUBBER_SIZE_PLUS; 
        $key_device_elevate = \TDConst::ELEVATE;
        $key_device_peel = \TDConst::PEEL;
        $key_device_cut = \TDConst::CUT;
    ?>
    <?php echo $__env->make('quotes.products.supplies.check_index_data', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->make('quotes.products.supplies.title_config', ['divide' => $rubber_divide, 'name' => 'cao su non'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->make('quotes.products.supplies.quantity_config', 
    ['compen_percent' => $rubber_compen_percent], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->make('quotes.products.supplies.size_config', ['plus' => $rubber_plus, 'divide' => $rubber_divide], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->make('quotes.products.supplies.select_supply_type', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php
        $data_cut = !empty($supply_obj->cut) ? json_decode($supply_obj->cut, true) : []; 
        $data_elevate = !empty($supply_obj->elevate) ? json_decode($supply_obj->elevate, true) : []; 
        $data_peel = !empty($supply_obj->peel) ? json_decode($supply_obj->peel, true) : []; 
    ?>

    <?php echo $__env->make('quotes.products.select_device', 
    ['key_device' => $key_device_cut, 'note' => 'Máy xén', 
    'value' => !empty($supply_obj->id) ? @$data_cut['machine'] : getDeviceId(['key_device' => $key_device_cut, 'supply' => $key_supp, 'default_device' => 1]), 'element' => $key_supp], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('quotes.products.select_device', 
    ['key_device' => $key_device_elevate, 'note' => 'Máy bế', 
    'value' => !empty($supply_obj->id) ? @$data_elavate['machine'] : getDeviceId(['key_device' => $key_device_elevate, 'supply' => $key_supp, 'default_device' => 1]), 'element' => $key_supp], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('quotes.products.select_device', 
    ['key_device' => $key_device_peel, 'note' => 'Máy bóc lề', 
    'value' => !empty($supply_obj->id) ? @$data_peel['machine'] : getDeviceId(['key_device' => $key_device_peel, 'supply' => $key_supp, 'default_device' => 1]), 'element' => $key_supp], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->make('quotes.products.note_field', ['key_supp' => $key_supp], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div><?php /**PATH C:\xampp\htdocs\td-app\td-company-app\resources\views/quotes/products/rubbers/ajax_view.blade.php ENDPATH**/ ?>