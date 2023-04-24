<?php
    $fld_pro_qty = [
        'name' => 'product['.$pro_index.']['.$key_supp.']['.$supp_index.'][qty]',
        'note' => 'Số lượng',
        'value' => @$supply_obj->product_qty ?? @$pro_qty,
        'attr' => ['type_input' => 'number', 'required' => 1, 'inject_class' => 'pro_qty_input paper_qty_modul_input']
    ];
    $fld_pro_nqty = [
        'name' => 'product['.$pro_index.']['.$key_supp.']['.$supp_index.'][nqty]',
        'note' => 'Số bát',
        'attr' => ['type_input' => 'number', 'required' => 1, 'inject_class' => 'pro_nqty_input paper_qty_modul_input'],
        'value' => @$supply_obj->nqty ?? 1
    ];
    $fld_pro_qty_supp = [
        'name' => 'product['.$pro_index.']['.$key_supp.']['.$supp_index.'][supp_qty]',
        'note' => 'Tổng SL vật tư',
        'value' => @$supply_obj->supp_qty ?? @$pro_qty,
        'attr' => ['type_input' => 'number', 'inject_class' => 'paper_qty_input', 'readonly' => 1]
    ]; 
?>
<div class="quantity_paper_module quantity_supply_module" data-percent = <?php echo e($compen_percent); ?> data-num = <?php echo e($compen_num); ?>>
    <?php echo $__env->make('view_update.view', $fld_pro_qty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('view_update.view', $fld_pro_nqty, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <div class="d-flex">
        <?php echo $__env->make('view_update.view', $fld_pro_qty_supp, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <span class="ml-1 color_gray mt-1"> x <?php echo e($compen_percent); ?> % + <?php echo e($compen_num); ?> BH</span>
    </div> 
</div><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/products/supplies/quantity_config.blade.php ENDPATH**/ ?>