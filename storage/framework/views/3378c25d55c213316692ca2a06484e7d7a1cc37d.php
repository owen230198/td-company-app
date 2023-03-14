<?php
    $select_config = !empty($other_data['config']) ? $other_data['config'] : [];
    $select_data = !empty($other_data['data']) ? $other_data['data'] : [];
?>
<?php if(@$select_config['search'] == 1): ?>
    <?php
        $url = asset('get-data-json-linking?table='.$select_data['table']);
        if (!empty($select_data['where'])) {
            foreach ($select_data['where'] as $key => $val) {
                $url .= '&'.$key.'='.$val;
            }
        }
        if (!empty($value)) {
            $data_id = $value;
            $data_label = getFieldDataById('name', $select_data['table'], $value);
        }
    ?>
    <select name="<?php echo e($name); ?>" class="form-control select_ajax <?php echo e(@$attr['inject_class'] ? ' '.$attr['inject_class'] : ''); ?>"
    data-url="<?php echo e($url); ?>" data-id="<?php echo e(@$data_id); ?>", data-label = "<?php echo e(@$data_label); ?>">
    </select>
<?php else: ?>
    <?php
        $list_options = getOptionDataField($select_data);
        $field_value = @$select_data['select_data'] ?? 'id';
        $field_title = @$select_data['field_title'] ?? 'name';
    ?>
    <select name="<?php echo e($name); ?>" class="form-control <?php echo e(@$attr['inject_class'] ? ' '.$attr['inject_class'] : ''); ?>">
        <option value="0">Chọn <?php echo e($note); ?></option>
        <?php $__currentLoopData = $list_options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($item->$field_value); ?>"><?php echo e($item->$field_title); ?></option>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </select>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/view_update/linking.blade.php ENDPATH**/ ?>