<div class="dashborad_content position-relative mb-4 pb-4 border_bot">
    <form action="<?php echo e($action_url); ?>" method="POST" class="config_content baseAjaxForm" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <div class="warehouse_field_action">
            <?php if(!empty($default_field)): ?>
                <?php $__currentLoopData = $default_field; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $df_value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <input type="hidden" name = "warehouse[<?php echo e($key); ?>]" value = "<?php echo e($df_value); ?>">   
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
            <?php $__currentLoopData = $field_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if($field['type'] == 'group'): ?>
                    <?php
                        $attr = !empty($field['attr']) ? json_decode($field['attr'], true) : [];
                        $other_data = !empty($field['other_data']) ? json_decode($field['other_data'], true) : [];
                        $child = !empty($field['child']) ? $field['child'] : [];
                    ?>
                    <div class="group_class_view <?php echo e(@$other_data['group_class']); ?>" <?php echo e(@$other_data['inject_attr']); ?>>
                        <?php $__currentLoopData = $child; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field_child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php
                                $value_index = $field_child['name'];
                                $field_child['name'] = 'warehouse['.$field_child['name'].']';
                                $arr = processArrField($field_child);
                                $arr['value'] = @$dataItem[$value_index];
                            ?>
                            <?php echo $__env->make('view_update.view', $arr, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>   
                    </div>
                <?php else: ?>
                    <?php
                        $field =  (array) $field;
                        $value_index = $field['name'];
                        $field['name'] = 'warehouse['.$field['name'].']';
                        $arr = processArrField($field);
                        $arr['value'] = @$config_view == 1 ? @$field['value'] : @$dataItem[$value_index];
                    ?>
                    <?php echo $__env->make('view_update.view', $arr, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <input type="hidden" name="log[type]" value="<?php echo e(@$type_supp); ?>">
            <?php $__currentLoopData = $field_logs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field_log): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php
                    $field_log['name'] = 'log['.$field_log['name'].']';
                ?>
                <?php echo $__env->make('view_update.view', $field_log, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
        <div class="group_btn_action_form text-center">
            <button type="submit" class="main_button color_white bg_green border_green radius_5 font_bold smooth">
                <i class="fa fa-check mr-2 fs-14" aria-hidden="true"></i>Hoàn tất
            </button>
            <a href="<?php echo e(getBackUrl()); ?>"
                class="main_button color_white bg_green radius_5 font_bold smooth mx-3">
                <i class="fa fa-angle-double-left mr-2 fs-14" aria-hidden="true"></i>Trở về
            </a>
            <a href="<?php echo e(url('')); ?>" class="main_button bg_red color_white radius_5 font_bold smooth red_btn">
                <i class="fa fa-times mr-2 fs-14" aria-hidden="true"></i>Hủy
            </a>
        </div>
    </form>
</div><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/warehouses/actions/form_action.blade.php ENDPATH**/ ?>