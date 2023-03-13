
<?php if($pindex > 0): ?>
    <div class="quote_paper_item mt-3 border_main p-3 radius_5">  
<?php endif; ?>
    <div class="mb-2 paper_product_config">
        <?php if($pindex > 0): ?>
            <?php
                $pro_paper_extend_name = [
                    'name' => '',
                    'type' => 'select',
                    'note' => 'Chọn tên phụ',
                    'attr' => ['required' => 1, 'inject_class' => 'select_ext_name_paper'],
                    'other_data' => ['data' => ['options' => [
                        $pindex => 'Chọn tên phụ cho lệnh in này',
                        'Tờ bồi khay định hình' => '1. Tờ bồi khay định hình',
                        'Tờ bồi thành' => '2. Tờ bồi thành',
                        'Tờ bồi mặt trong hộp' => '3. Tờ bồi mặt trong hộp',
                        'Khay giấy định hình' => '4. Khay giấy định hình',
                        'Tờ phụ trang trí' => '5. Tờ phụ trang trí'
                    ]]]
                ] 
            ?>
            <?php echo $__env->make('view_update.view', $pro_paper_extend_name, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endif; ?>
        <h3 class="fs-14 text-uppercase border_top_eb pt-3 mt-3 text-center quote_handle_title">
            <span><?php echo e($pindex == 0 ? 'Phần giấy in' : 'Lệnh in thêm thứ '.$pindex); ?></span>
        </h3>
        <?php
            $pro_paper_name = [
                'name' => 'product['.$j.'][paper]['.$pindex.'][name]',
                'note' => 'Tên SP giấy in',
                'attr' => ['required' => 1, 'inject_class' => $pindex == 0 ? 'quote_receive_paper_name' : '']
            ] 
        ?>
        <?php echo $__env->make('view_update.view', $pro_paper_name, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="d-flex align-items-center mb-2 fs-13">
            <label class="mb-0 min_150 text-capitalize text-right mr-3">
                <span class="fs-15 mr-1">*</span>Kích thước 
            </label>
            <div class="d-flex justify-content-between align-items-center">
                <input type="number" name = 'product[<?php echo e($j); ?>][paper][<?php echo e($pindex); ?>][size][length]' placeholder="Dài" class="form-control short_input"> <span class="mx-3">X</span>
                <input type="number" name = 'product[<?php echo e($j); ?>][paper][<?php echo e($pindex); ?>][size][width]' placeholder="Rộng" class="form-control short_input"> <span class="mx-3">X</span>
                <input type="number" name = 'product[<?php echo e($j); ?>][paper][<?php echo e($pindex); ?>][size][height]' placeholder="Cao" class="form-control short_input">
            </div>
        </div>
        <div class="quantity_paper_module">
            <?php
                $pro_qty_field = [
                    'name' => 'product['.$j.'][paper]['.$pindex.'][qty]',
                    'note' => 'Số lượng',
                    'attr' => ['type_input' => 'number', 'required' => 1, 'inject_class' => 'pro_qty_input paper_qty_modul_input']
                ] 
            ?>
            <?php echo $__env->make('view_update.view', $pro_qty_field, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <?php
                $pro_nqty_field = [
                    'name' => 'product['.$j.'][paper]['.$pindex.'][nqty]',
                    'note' => 'Số bát/tờ in',
                    'attr' => ['type_input' => 'number', 'required' => 1, 'inject_class' => 'pro_nqty_input paper_qty_modul_input'],
                    'value' => 1
                ] 
            ?>
            <?php echo $__env->make('view_update.view', $pro_nqty_field, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            
            <?php
                $pro_paper_qty = [
                    'name' => 'product['.$j.'][paper]['.$pindex.'][paper_qty]',
                    'note' => 'Tờ in chuẩn',
                    'attr' => ['type_input' => 'number', 'inject_class' => 'paper_qty_input'],
                ] 
            ?>
            <?php echo $__env->make('view_update.view', $pro_paper_qty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 

            <?php
                $pro_total_paper_qty = [
                    'name' => 'product['.$j.'][paper]['.$pindex.'][total_paper_qty]',
                    'note' => 'Tổng cả BH',
                    'attr' => ['type_input' => 'number', 'inject_class' => 'total_paper_qty_input']
                ] 
            ?>
            <?php echo $__env->make('view_update.view', $pro_total_paper_qty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div class="materal_paper_module">
            <?php
                $pro_paper_materals = [
                    'name' => 'product['.$j.'][paper]['.$pindex.'][paper_materals]',
                    'type' => 'linking',
                    'note' => 'Chọn chất liệu giấy',
                    'attr' => ['required' => 1, 'inject_class' => 'select_paper_materal'],
                    'other_data' => ['config' => ['search' => 1], 'data' => ['table' => 'paper_materals']]
                ] 
            ?>
            <?php echo $__env->make('view_update.view', $pro_paper_materals, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            
            <?php
                $pro_paper_quantitative = [
                    'name' => 'product['.$j.'][paper]['.$pindex.'][quantitative]',
                    'note' => 'Định lượng',
                    'attr' => ['type_input' => 'number', 'required' => 1]
                ] 
            ?>
            <?php echo $__env->make('view_update.view', $pro_paper_quantitative, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <div class="d-flex align-items-center mb-2 fs-13">
                <label class="mb-0 min_150 text-capitalize text-right mr-3">
                    <span class="fs-15 mr-1">*</span>Khổ giấy in
                </label>
                <div class="d-flex justify-content-between align-items-center">
                    <input type="number" name = 'product[<?php echo e($j); ?>][paper][<?php echo e($pindex); ?>][size][length]' placeholder="Chiều dài" class="form-control medium_input"> <span class="mx-3">X</span>
                    <input type="number" name = 'product[<?php echo e($j); ?>][paper][<?php echo e($pindex); ?>][size][width]' placeholder="Chiều rộng" class="form-control medium_input"> 
                    <div class="paper_price_config_input" style="display: none">
                        <div class="d-flex align-items-center">
                            <span class="mx-3">X</span>
                            <input type="number" name = 'product[<?php echo e($j); ?>][paper][<?php echo e($pindex); ?>][size][height]' placeholder="Đơn giá" class="form-control medium_input price_input_paper" disabled="disabled">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo $__env->make('quotes.products.papers.print', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php if($pindex > 0): ?>
</div>   
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/products/papers/ajax_view.blade.php ENDPATH**/ ?>