<?php
    $select_data = !empty($other_data['data']) ? $other_data['data'] : [];
    $list_options = !empty($select_data['options']) ? $select_data['options'] : [];
?>
<p class="color_main bg_eb px-3 py-1 radius_5 mb-0 text-center linking_table">
	<?php echo e(!empty($list_options[$value]) ? $list_options[$value] : 'Không xác định'); ?>

</p><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/view_table/select.blade.php ENDPATH**/ ?>