<div class="mb-2 paper_product_config">
    <?php
        $styro_compen_percent = \App\Constants\TDConstant::CARTON_COMPEN_PERCENT;
        $styro_compen_num = \App\Constants\TDConstant::CARTON_COMPEN_NUM;
        $styro_divide = \App\Constants\TDConstant::STYRO_SIZE_DIVIDE;
    ?>
    <h3 class="fs-14 text-uppercase border_top_eb pt-3 mt-3 text-center quote_handle_title">
        <p class="mb-1"><?php echo e($pindex == 0 ? 'Phần vật tư mút phẳng' : 'Vật tư mút phẳng thêm '.$pindex); ?></p>
        <p class="mb-1">Kích thước tấm mút phẳng là <?php echo e($styro_divide[0]); ?> x <?php echo e($styro_divide[1]); ?>cm</p>
    </h3>
    
    <div class="quantity_paper_module quantity_supply_module" data-percent = <?php echo e($styro_compen_percent); ?> data-num = <?php echo e($styro_compen_num); ?>>
        <?php
            $pro_styro_qty = [
                'name' => 'product['.$j.'][styro]['.$pindex.'][qty]',
                'note' => 'Số lượng',
                'attr' => ['type_input' => 'number', 'required' => 1, 'inject_class' => 'pro_qty_input paper_qty_modul_input']
            ] 
        ?>
        <?php echo $__env->make('view_update.view', $pro_styro_qty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <?php
            $pro_styro_nqty = [
                'name' => 'product['.$j.'][styro]['.$pindex.'][nqty]',
                'note' => 'Tổng số bát',
                'attr' => ['type_input' => 'number', 'required' => 1, 'inject_class' => 'pro_nqty_input paper_qty_modul_input'],
                'value' => @$pro_size['nqty'] ?? 1
            ] 
        ?>
        <?php echo $__env->make('view_update.view', $pro_styro_nqty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        
        <?php
            $pro_styro_qty = [
                'name' => 'product['.$j.'][styro]['.$pindex.'][styro_qty]',
                'note' => 'Số lượng tờ in',
                'attr' => ['type_input' => 'number', 'inject_class' => 'paper_qty_input'],
            ] 
        ?>
        <div class="d-flex align-items-center">
            <?php echo $__env->make('view_update.view', $pro_styro_qty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <span class="ml-1 color_gray"> x <?php echo e($styro_compen_percent); ?> % + <?php echo e($styro_compen_num); ?> BH</span>
        </div> 
    </div>

    <?php
        $styro_plus = \App\Constants\TDConstant::STYRO_SIZE_PLUS; 
    ?>
    <div class="calc_size_module" data-plus = <?php echo e($styro_plus); ?> data-divide = <?php echo e($styro_divide[0]); ?>>
        <?php
            $pro_styro_temp_length = [
                'name' => 'product['.$j.'][styro]['.$pindex.'][size][temp_length]',
                'note' => 'KT chiều dài sơ bộ',
                'attr' => ['type_input' => 'number', 'placeholder' => 'Nhập KT(cm)', 'inject_class' => 'temp_size_length'],
            ] 
        ?>
        <div class="d-flex alig-items-center">
            <?php echo $__env->make('view_update.view', $pro_styro_temp_length, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <span class="ml-1 color_gray mt-1"> + <?php echo e($styro_plus); ?>cm</span>
        </div>

        <?php
            $pro_styro_length = [
                'name' => 'product['.$j.'][styro]['.$pindex.'][size][length]',
                'note' => 'KT chiều dài tối ưu',
                'attr' => ['type_input' => 'number', 'placeholder' => 'Đơn vị cm', 'inject_class' => 'otm_size_length'],
            ] 
        ?>
        <?php echo $__env->make('view_update.view', $pro_styro_length, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
    
    <?php
        $pro_styro_width = [
            'name' => 'product['.$j.'][styro]['.$pindex.'][size][width]',
            'note' => 'Kích thước chiều rộng',
            'attr' => ['type_input' => 'number', 'placeholder' => 'Nhập KT (cm)'],
        ];
    ?>
    <div class="d-flex">
        <?php echo $__env->make('view_update.view', $pro_styro_width, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <span class="ml-1 color_gray mt-1"> + <?php echo e($styro_plus); ?>cm BH</span>
    </div>

    <?php
        $pro_styro_supply = [
            'name' => 'product['.$j.'][styro]['.$pindex.'][supplies]',
            'type' => 'linking',
            'note' => 'Chọn vật tư',
            'attr' => ['required' => 1, 'inject_class' => 'select_supply'],
            'other_data' => ['config' => ['search' => 1], 
            'data' => ['table' => 'supplies', 'where' => ['type' => \App\Constants\TDConstant::STYRO_SUPP]]]
        ] 
    ?>
    <?php echo $__env->make('view_update.view', $pro_styro_supply, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php
        $pro_styro_quantative = [
            'name' => 'product['.$j.'][styro]['.$pindex.'][supplies]',
            'type' => 'linking',
            'note' => 'Chọn định lượng',
            'attr' => ['required' => 1, 'inject_class' => 'ajax_supply_price'],
            'other_data' => ['config' => ['search_box' => 1], 'data' => ['table' => 'supply_prices']]
        ] 
    ?>
    <?php echo $__env->make('view_update.view', $pro_styro_quantative, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 

    <?php
        $key_device_elevate = \App\Constants\TDConstant::ELEVATE;
        $key_device_peel = \App\Constants\TDConstant::PEEL;
        $key_device_cut = \App\Constants\TDConstant::CUT;
    ?>
    <?php echo $__env->make('quotes.products.select_device', 
    ['key_device' => $key_device_cut, 'note' => 'Máy xén', 'value' => getDeviceIdByKey($key_device_cut), 'element' => 'styro'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('quotes.products.select_device', 
    ['key_device' => $key_device_elevate, 'note' => 'Máy bế', 'value' => getDeviceIdByKey($key_device_elevate), 'element' => 'styro'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('quotes.products.select_device', 
    ['key_device' => $key_device_peel, 'note' => 'Máy bóc lề', 'value' => getDeviceIdByKey($key_device_peel), 'element' => 'styro'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/products/styrofoams/view.blade.php ENDPATH**/ ?>