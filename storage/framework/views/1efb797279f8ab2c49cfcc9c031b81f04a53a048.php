<?php if(@$data_order['status'] == \StatusConst::NOT_ACCEPTED): ?>
    <?php echo $__env->make('orders.view', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/orders/users/2/view.blade.php ENDPATH**/ ?>