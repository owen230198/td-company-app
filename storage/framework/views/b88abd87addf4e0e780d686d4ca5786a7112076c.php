
<?php $__env->startSection('main'); ?>
    <h3 class="fs-14 text-uppercase pt-3 mt-3 text-center handle_title">
        <span>Chi tiết lệnh <?php echo e(@$data_command['code']); ?></span>
    </h3>
    <div class="order_list_product">
        <?php echo $__env->make('quotes.products.ajax_view', ['order_get' => true, 'not_detail' => true], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="design_paper_info">
            <?php echo $__env->make('c_designs.paper_table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('orders.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\td-app\td-company-app\resources\views/c_designs/view.blade.php ENDPATH**/ ?>