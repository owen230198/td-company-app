<?php
    $field_shows = \App\Models\Product::SUPPLY_FIELDS;
?>
<div class="table_base_view position-relative">
    <table class="table table-bordered mb-2 table_main">
        <tr>
            <th class="font-bold fs-13 text-center">
                <span>#</span>
            </th>
            <th class="font-bold fs-13">Tình trạng vật tư</th>
            <?php $__currentLoopData = $field_shows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <th class="font-bold fs-13">
                    <?php echo e($field['note']); ?>

                </th>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <th class="font-bold fs-13">Chức năng</th>
        </tr>
        <tbody>
            <?php $__currentLoopData = $element['data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td class="text-center">
                        <span><?php echo e($key+1); ?></span>
                    </td>
                    <?php
                        $supp_handle_status = getHandleSupplyStatus($data->product, $data->id, @$data->type);
                        $bg_color = @$supp_handle_status == 'handled' ? 'stt_bg_green' : 
                                    (@$supp_handle_status == 'handling' ? 'stt_bg_blue' : 'stt_bg_red');
                        $stt_title = @$supp_handle_status == 'handled' ? 'Đã xử lí' : 
                                    (@$supp_handle_status == 'handling' ? 'Đang xử lí' : 'Cần xử lí ngay');
                    ?> 
                    <td class="text-center <?php echo e($bg_color); ?>">
                        <span class="color_white font_bold"><?php echo e($stt_title); ?></span>
                    </td>
                    <?php $__currentLoopData = $field_shows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <td>
                        <?php
                            $arr = $field;
                            $arr['obj_id'] = $data->id;
                            $arr['value'] = @$data->{$field['name']};
                            $arr['other_data'] = !empty($field['other_data']) ? json_decode($field['other_data'], true) : [];
                        ?>
                        <?php echo $__env->make('view_table.'.$field['type'], $arr, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </td>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <td>
                        <div class="func_btn_module text-center">
                            <a href="<?php echo e(url('supply-handle?table='.$element['table'].'&id='.$data->id.'&order='.$id)); ?>">
                                <i class="fa fa-paper-plane-o mr-1" aria-hidden="true"></i> Yêu cầu xuất vật tư
                            </a>   
                        </div>
                    </td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tbody>
    </table>
</div>
<?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/orders/users/6/supply_table.blade.php ENDPATH**/ ?>