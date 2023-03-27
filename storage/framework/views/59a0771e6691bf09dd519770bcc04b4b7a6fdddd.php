<div class="mb-2 paper_product_config">
    <h3 class="fs-14 text-uppercase border_top_eb pt-3 mt-3 text-center quote_handle_title">
        <span><?php echo e($pindex == 0 ? 'Phần vật tư mica' : 'Vật tư mica thêm '.$pindex); ?></span>
    </h3>
    <?php
        $mica_compen_percent = 0;
        $mica_compen_num = \App\Constants\TDConstant::CARTON_COMPEN_NUM;
    ?>
    
    <div class="quantity_paper_module" data-percent = <?php echo e($mica_compen_percent); ?> data-num = <?php echo e($mica_compen_num); ?>>
        <?php
            $pro_mica_qty = [
                'name' => 'product['.$j.'][mica]['.$pindex.'][qty]',
                'note' => 'Số lượng',
                'attr' => ['type_input' => 'number', 'required' => 1, 'inject_class' => 'pro_qty_input paper_qty_modul_input']
            ] 
        ?>
        <?php echo $__env->make('view_update.view', $pro_mica_qty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <div class="d-flex align-items-center mb-2 fs-13">
            <label class="mb-0 min_180 text-capitalize text-right mr-3">
                <span class="fs-15 mr-1">*</span>Kích thước
            </label>
            <div class="d-flex justify-content-between align-items-center">
                <input type="number" name = 'product[<?php echo e($j); ?>][decal][<?php echo e($pindex); ?>][size][length]' placeholder="Chiều dài (cm)" 
                class="form-control medium_input" step="any"> 
                <span class="mx-3">X</span>
                <input type="number" name = 'product[<?php echo e($j); ?>][decal][<?php echo e($pindex); ?>][size][width]' placeholder="Chiều rộng (cm)" 
                class="form-control medium_input" step="any"> 
                <span class="mx-2">+</span>
                <input type="number" name = 'product[<?php echo e($j); ?>][decal][<?php echo e($pindex); ?>][size][margin]' placeholder="Thừa lề (cm)" 
                class="form-control medium_input" step="any">
                <span class="ml-2 color_red font-italic">Khớp chiều 150cm</span> 
            </div>
        </div>

        <?php
            $pro_mica_nqty = [
                'name' => 'product['.$j.'][mica]['.$pindex.'][nqty]',
                'note' => 'Số bát/tờ in',
                'attr' => ['type_input' => 'number', 'required' => 1, 'inject_class' => 'pro_nqty_input paper_qty_modul_input'],
                'value' => @$pro_size['nqty'] ?? 1
            ] 
        ?>
        <?php echo $__env->make('view_update.view', $pro_mica_nqty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        
        <?php
            $pro_mica_qty = [
                'name' => 'product['.$j.'][mica]['.$pindex.'][mica_qty]',
                'note' => 'Số lượng tờ in',
                'attr' => ['type_input' => 'number', 'inject_class' => 'paper_qty_input'],
            ] 
        ?>
        <div class="d-flex align-items-center">
            <?php echo $__env->make('view_update.view', $pro_mica_qty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <span class="ml-1 color_gray">+ <?php echo e($mica_compen_num); ?> BH</span>
        </div> 
    </div>

    <?php
        $pro_mica_supply = [
            'name' => 'product['.$j.'][mica]['.$pindex.'][supplies]',
            'type' => 'linking',
            'note' => 'Chọn vật tư',
            'attr' => ['required' => 1, 'inject_class' => 'select_supply'],
            'other_data' => ['config' => ['search' => 1], 
            'data' => ['table' => 'supplies', 'where' => ['type' => \App\Constants\TDConstant::MICA_SUPP]]]
        ] 
    ?>
    <?php echo $__env->make('view_update.view', $pro_mica_supply, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php
        $key_device_elevate = \App\Constants\TDConstant::ELEVATE;
    ?>
    <?php echo $__env->make('quotes.products.select_device', 
    ['key_device' => $key_device_elevate, 'note' => 'Máy bế', 'value' => getDeviceIdByKey($key_device_elevate), 'element' => 'mica'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/products/micaes/view.blade.php ENDPATH**/ ?>