<?php
    $device = [
        'name' => 'product['.$j.']['.$element.']['.$pindex.']['.$key_device.'][machine]',
        'type' => 'linking',
        'note' => $note,
        'value' => @$value ?? 0,
        'other_data' => ['data' => ['table' => 'devices', 'where' => ['key_device' => $key_device], 'select' => ['id', 'name']]]
    ] 
?>
<?php echo $__env->make('view_update.view', $device, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/products/select_device.blade.php ENDPATH**/ ?>