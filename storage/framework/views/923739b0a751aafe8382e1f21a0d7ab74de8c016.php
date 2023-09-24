
<?php $__env->startSection('content'); ?>
<div class=" main_login d-flex justify-content-center align-items-center">
    <div class="form_login_content text-center">
        <div class="login_logo mb-4">
            <img src="<?php echo e(asset('frontend/admin/images/logo.png')); ?>" />
        </div>
        <h3 class="fs-14 text-uppercase border_bot_eb pb-3 mb-3 text-center handle_title">
            <p class="mb-1"><?php echo e($title); ?></p>
        </h3>
        <?php if(@session(\StatusConst::ERR_MSG)): ?>
            <div class="alert alert-danger">
                <?php echo e(session(\StatusConst::ERR_MSG)['messages']); ?>

            </div>
        <?php endif; ?>
        <form action="<?php echo e(asset(@$link_login ?? 'login')); ?>" method="POST" class="form_login form-group">
            <?php echo csrf_field(); ?>
            <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                <div class="alert alert-danger">
                    <?php echo e(@$message); ?>

                </div>
            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            <input type="text" class="form-control mb-3" name="username" placeholder="Username" value="<?php echo e(old('username')); ?>">
            <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                <div class="alert alert-danger">
                    <?php echo e(@$message); ?>

                </div>
            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            <input type="password" class="form-control mb-3" name="password" placeholder="Password">
            <button type="submit" class="main_button bg_main color_white smooth border_main radius_5 font_bold smooth login_button">Đăng Nhập</button>
        </form>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\td-app\td-company-app\resources\views/auth/login.blade.php ENDPATH**/ ?>