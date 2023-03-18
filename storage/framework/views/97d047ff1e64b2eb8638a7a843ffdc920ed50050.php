<div class="mb-2 handle_after_print_config">
    <h3 class="fs-14 text-uppercase border_top_eb pt-3 mt-3 text-center quote_handle_title">
        <span>Phần Sản xuất sau in</span>
    </h3>
<?php
    $handle_stage = \App\Constants\TDConstant::HANDLE_STAGE;
?>
    <div class="quote_after_print_tab">
        <div class="d-flex">
            <div class="nav flex-column nav-pills  min_180 max_150 mr-3 bg_white" id="after-print-tab-pro<?php echo e($j.'_'.$pindex); ?>" role="tablist" aria-orientation="vertical">
                <?php $__currentLoopData = $handle_stage; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $navkey => $nav): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <a class="nav-link text-right <?php echo e($navkey == 0 ? $nav['color'].'_stage active' : $nav['color'].'_stage'); ?>" 
                    id="v-<?php echo e($nav['key'].'_'.$j.'_'.$pindex); ?>-tab" 
                    data-toggle="pill" href="#v-<?php echo e($nav['key'].'_'.$j.'_'.$pindex); ?>" role="tab" 
                    aria-controls="v-<?php echo e($nav['key'].'_'.$j.'_'.$pindex); ?>" aria-selected="true">
                        <?php echo e($nav['note']); ?>

                    </a>    
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            <div class="tab-content p-3 w-100 bg_eb radius_5" id="after-print-tab-pro<?php echo e($j.'_'.$pindex); ?>Content">
                <?php $__currentLoopData = $handle_stage; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tabkey => $tab): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="tab-pane fade show<?php echo e($tabkey == 0 ? ' active' : ''); ?>" id="v-<?php echo e($tab['key'].'_'.$j.'_'.$pindex); ?>" 
                    role="tabpanel" aria-labelledby="v-<?php echo e($tab['key'].'_'.$j.'_'.$pindex); ?>-tab">
                        <?php echo $__env->make('quotes.products.papers.handles.'.$tab['key'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
</div><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/products/papers/after_print.blade.php ENDPATH**/ ?>