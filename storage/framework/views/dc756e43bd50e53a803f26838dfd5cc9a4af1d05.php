<div class="quote_supp_item <?php echo e($supp_index > 0 ? ' mt-4 border_green p-3 radius_5' : ''); ?>" data-index=<?php echo e(@$supp_index ?? 0); ?>>
    <?php
        $key_supp = \TDConst::SILK;
        $silk_compen_percent = \TDConst::CARTON_COMPEN_PERCENT;;
        $silk_compen_num = \TDConst::CARTON_COMPEN_NUM;
        $silk_divide = \TDConst::SILK_SIZE_DIVIDE;
        $silk_plus = \TDConst::SILK_SIZE_PLUS; 
        $pro_silk_supply = [
            'name' => 'product['.$pro_index.']['.$key_supp.']['.$supp_index.'][supply_price]',
            'type' => 'linking',
            'note' => 'Chọn vật tư',
            'other_data' => ['config' => ['search' => 1], 
            'data' => ['table' => 'supply_prices', 'where' => ['type' => $key_supp]]]
        ];
        $pro_silk_ext_price = [
            'name' => 'product['.$pro_index.']['.$key_supp.']['.$supp_index.'][prescript_price]',
            'note' => 'Phát sinh giá lụa cao cấp',
            'attr' => ['type_input' => 'number'],
            'value' => 0
        ];
        $key_device_cut = \TDConst::CUT;
    ?>
    <?php echo $__env->make('quotes.products.supplies.title_config', ['divide' => $silk_divide, 'name' => 'vải lụa'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->make('quotes.products.supplies.quantity_config', 
    ['compen_percent' => $silk_compen_percent, 'compen_num' => $silk_compen_num], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('quotes.products.supplies.size_config', ['plus' => $silk_plus, 'divide' => $silk_divide], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('view_update.view', $pro_silk_supply, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <div class="d-flex align-items-center">
        <?php echo $__env->make('view_update.view', $pro_silk_ext_price, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <span class="ml-1 color_gray">Giá cho 1 sản phẩm</span>
    </div> 

    <?php echo $__env->make('quotes.products.select_device', 
    ['key_device' => $key_device_cut, 'note' => 'Máy xén', 
    'value' =>  getDeviceId(['key_device' => $key_device_cut, 'supply' => $key_supp, 'default_device' => 1]), 'element' => $key_supp], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/products/silks/ajax_view.blade.php ENDPATH**/ ?>