<?php
    $key_stage = \TDConst::FLOAT;
    $elevate_key = \TDConst::ELEVATE;
    $float_base_name = @$category == 1 ? '['.$key_stage.']' : '['.$elevate_key.']['.$key_stage.']';
    $paper_float_price = [
        'name' => 'product['.$pro_index.'][paper]['.$supp_index.']'.$float_base_name.'[price]',
        'note' => 'Giá tiền thúc nổi 1 sp',
        'attr' => ['type_input' => 'number'],
        'value' => 0
    ];
    $paper_float_shape_price = [
        'name' => 'product['.$pro_index.'][paper]['.$supp_index.']'.$float_base_name.'[shape_price]',
        'note' => 'Giá khuôn thúc nổi 1 sp',
        'attr' => ['type_input' => 'number'],
        'value' => 0
    ]  
?>
<div class="d-flex align-items-center">
    <?php echo $__env->make('view_update.view', $paper_float_price, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <span class="ml-2 fs-12 font-italic color_red">Giá lượt/bát sp (không phải giá lượt/ tờ in)</span>
</div>

<div class="d-flex align-items-center">
    <?php echo $__env->make('view_update.view', $paper_float_shape_price, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <span class="ml-2 fs-12 font-italic color_red">Giá khuôn/bát sp (không phải giá khuôn/tờ in)</span>
</div>

<?php if($category == 1): ?>
    <?php echo $__env->make('quotes.products.papers.handles.select_device', ['key_device' => $key_stage], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/products/papers/handles/float.blade.php ENDPATH**/ ?>