Thời gian: <span class="color_green font_bold"><?php echo e(date('d/m/Y H:i', strtotime($created_at))); ?></span>, 
nhân viên: <span class="color_main font_bold"><?php echo e(getFieldDataById('name', 'n_users', $created_by)); ?></span>
đã nhập thêm <span class="color_red font_bold"><?php echo e($qty); ?></span> vật tư, 
từ nhà cung cấp <span class="font_bold"><?php echo e(getFieldDataById('name', 'warehouse_providers', $provider)); ?></span>, 
với giá: <span class="font_bold color_red"><?php echo e(number_format((float) $price)); ?>đ</span>, 
số lượng vật tư thay đổi từ <span class="color_red font_bold"><?php echo e($old_qty); ?></span> thành <span class="color_red font_bold"><?php echo e($new_qty); ?></span>,
<?php
    $file_bill = !empty($bill) ? json_decode($bill, true) : [];
?>
<?php if(!empty($file_bill['path'])): ?>
    tải về file hóa đơn nhập vật tư <a href="<?php echo e($file_bill['path']); ?>" target="_blank" class="color_green font_bold">tại đây</a>.
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/warehouses/actions/histories/item.blade.php ENDPATH**/ ?>