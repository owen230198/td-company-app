<div class="station-richmenu-main-search">
  <form action="<?php echo e(asset('search-table/'.$tableItem['name'].'')); ?>" method="GET" class="form-group d-flex align-items-center row mb-0" id="form-search">
    <?php
      $data_search = @$data_search?$data_search:array()
    ?>
    <?php $__currentLoopData = $field_searchs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-4 mb_20 border_right_eb align-self-center">
          <?php echo $__env->make('view_search.'.$field["view_type"].'', ['field'=>$field, 'data_search'=>$data_search], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
  </form>
</div><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/table/form_search.blade.php ENDPATH**/ ?>