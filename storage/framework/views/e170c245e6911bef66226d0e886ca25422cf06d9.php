<?php
    $select_data = !empty($other_data['data']) ? $other_data['data'] : [];
    $field_title = @$select_data['field_title'] ?? 'name';
    $linking_item = \DB::table($select_data['table'])->find($value);
    $label = getLabelLinking($linking_item, $field_title);
?>
<p class="color_main py-1 radius_5 mb-0 text-center linking_table">
	<?php echo e($label); ?>

</p><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/view_table/linking.blade.php ENDPATH**/ ?>