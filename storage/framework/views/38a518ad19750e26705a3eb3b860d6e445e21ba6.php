<?php
    $value = @$value == '' ? 'Chưa có nội dung' : $value;
?>
<p class="mb-0 w_max_content"><?php echo e(!empty($attr['type_input']) && $attr['type_input'] == 'price' ? number_format((float)$value) : @$value); ?></p><?php /**PATH /home/dell/Desktop/code/td-company-app/resources/views/view_table/text.blade.php ENDPATH**/ ?>