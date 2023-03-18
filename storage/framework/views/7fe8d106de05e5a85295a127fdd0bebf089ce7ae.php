
<?php $__env->startSection('css'); ?>
    <link rel="stylesheet" href="frontend/admin/css/quote.css">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="chose_customer_form">
        <form action="<?php echo e(asset('create-quote?step=chose_customer')); ?>" method="POST" class="chose_customer_quote_form" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>
            <div class="form-group d-flex mb-3 pb-3">
                <label class="mb-0 min_180 fs-13 text-capitalize justify-content-end mr-3 d-flex align-items-center">Tìm kiếm Khách hàng</label>
                <select name="customer_id" class="form-control select_ajax select_customer_quote" 
                data-url = <?php echo e(asset('get-data-json-customer?status=1')); ?>></select>
            </div>
            <div class="customer_info_quote mr-5">

            </div>
        </form>
    </div>   
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script src="frontend/admin/script/quote.js"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/chose_customer.blade.php ENDPATH**/ ?>