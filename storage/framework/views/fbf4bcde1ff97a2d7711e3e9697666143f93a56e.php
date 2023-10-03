<ul>
    <?php if(!empty($stage['supp_qty'])): ?>
        <li>
            <span>SL tờ in: </span>
            <strong class="color_red"><?php echo e($stage['supp_qty']); ?></strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['cover_supp_qty'])): ?>
        <li>
            <span>SL tờ in (phủ trên): </span>
            <strong class="color_red"><?php echo e($stage['cover_supp_qty']); ?></strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['materal'])): ?>
        <li>
            <span>Chất liệu cán: </span>
            <strong class="color_red"><?php echo e(getFieldDataById('name', 'materals', $stage['materal'])); ?></strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['materal_price'])): ?>
        <li>
            <span>ĐG chất liệu cán: </span>
            <strong class="color_red"><?php echo e(number_format((float) $stage['materal_price'])); ?>đ</strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['face'])): ?>
        <li>
            <span>Số mặt cán: </span>
            <strong class="color_red"><?php echo e($stage['face']); ?></strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['cover_materal'])): ?>
        <li>
            <span>Chất liệu cán phủ trên: </span>
            <strong class="color_red"><?php echo e(getFieldDataById('name', 'materals', $stage['cover_materal'])); ?></strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['materal_cover_price'])): ?>
        <li>
            <span>ĐG chất liệu cán phủ trên: </span>
            <strong class="color_red"><?php echo e(number_format((float) $stage['materal_cover_price'])); ?>đ</strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['cover_face'])): ?>
        <li>
            <span>Số mặt cán phủ trên: </span>
            <strong class="color_red"><?php echo e($stage['cover_face']); ?></strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['machine'])): ?>
        <li>
            <span>Thiết bị: </span>
            <strong class="color_red"><?php echo e(getFieldDataById('name', 'devices', $stage['machine'])); ?></strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['model_price'])): ?>
        <li>
            <span>ĐG Chi phí khuôn: </span>
            <strong class="color_red"><?php echo e(number_format((float) $stage['model_price'])); ?>đ</strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['shape_price'])): ?>
        <li>
            <span>ĐG chỉnh máy: </span>
            <strong class="color_red"><?php echo e(number_format((float) $stage['shape_price'])); ?>đ</strong>
        </li>
    <?php endif; ?>

    <?php if(!empty($stage['work_price'])): ?>
        <li>
            <span>ĐG lượt: </span>
            <strong class="color_red"><?php echo e(number_format((float) $stage['work_price'])); ?>đ</strong>
        </li>
    <?php endif; ?>
</ul>
<div class="mt-2 pt-2 border_top_thin formula_tab">
    <?php
        convertCmToMeter($size['length'], $size['width'])
    ?>
    <p class="fs-15 color_green mb-2 font_bold">Công Thức Tính cán metalai</p>
    <div class="formula_item d-flex align-items-center color_brown mb-1">
        <p class="formula_name font_bold">(1) Chi phí vật tư khuôn:</p>
        <div class="formula_content d-flex align-items-center">
            <p class="formula_param mx-2">Dài x Rộng x ĐG Chi phí khuôn </p>
            <p class="font_bold formula_result mr-2"> = <?php echo e($size['length']); ?> x <?php echo e($size['width']); ?> x <?php echo e($stage['model_price']); ?></p>
            <p class="font_bold formula_result"> = <?php echo e(number_format($size['length'] * $size['width'] * $stage['model_price'])); ?>đ</p>
        </div>
    </div>
    <div class="formula_item d-flex align-items-center color_brown mb-1">
        <p class="formula_name font_bold">(2) Chi phí vật tư:</p>
        <div class="formula_content d-flex align-items-center">
            <p class="formula_param mx-2">
                Dài (<?php echo e($size['length']); ?>) x Rộng x ĐG chất liệu cán x (SL tờ in cả BH + BH thiết bị)  x Số mặt cán
            </p>
            <p class="font_bold formula_result mr-2"> = <?php echo e($size['length']); ?> x <?php echo e($size['width']); ?> x <?php echo e($stage['materal_price']); ?> x <?php echo e($stage['supp_qty']); ?> x <?php echo e($stage['face']); ?></p>
            <p class="font_bold formula_result"> = <?php echo e(number_format($size['length'] * $size['width'] * $stage['materal_price'] * $stage['supp_qty'] * $stage['face'])); ?>đ</p>
        </div>
    </div>   
    <div class="formula_item d-flex align-items-center color_brown mb-1">
        <p class="formula_name font_bold">(3) Chi phí chỉnh máy:</p>
        <div class="formula_content d-flex align-items-center">
            <p class="formula_param mx-2">
                ĐG chỉnh máy (<?php echo e($stage['shape_price']); ?>)
            </p>
            <p class="font_bold formula_result"> = <?php echo e(number_format($stage['shape_price'])); ?>đ</p>
        </div>
    </div> 
    <div class="formula_item d-flex align-items-center color_brown mb-1">
        <p class="formula_name font_bold">(4) Chi phí lượt:</p>
        <div class="formula_content d-flex align-items-center">
            <p class="formula_param mx-2">
                (SL tờ in cả BH + BH thiết bị) x ĐG lượt  x  Số mặt cán
            </p>
            <p class="font_bold formula_result"> = <?php echo e($stage['supp_qty']); ?> x <?php echo e($stage['work_price']); ?> x <?php echo e($stage['face']); ?></p>
            <p class="font_bold formula_result"> = <?php echo e(number_format($stage['supp_qty'] * $stage['work_price'] * $stage['face'])); ?>đ</p>
        </div>
    </div>
    <p class="fs-15 font_bold">Tổng chi phí cho máy cán metalai: (1) + (2) + (3) + (4) = <?php echo e(number_format($stage['metalai_price'])); ?>đ</p>       
</div>

<div class="mt-2 pt-2 border_top_thin formula_tab">
    <p class="fs-15 color_green mb-2 font_bold">Công Thức Tính cán phủ trên</p>
    <div class="formula_item d-flex align-items-center color_brown mb-1">
        <p class="formula_name font_bold">(1) Chi phí vật tư khuôn:</p>
        <div class="formula_content d-flex align-items-center">
            <p class="formula_param mx-2">Dài x Rộng x ĐG Chi phí khuôn </p>
            <p class="font_bold formula_result mr-2"> = <?php echo e($size['length']); ?> x <?php echo e($size['width']); ?> x <?php echo e($stage['model_price']); ?></p>
            <p class="font_bold formula_result"> = <?php echo e(number_format($size['length'] * $size['width'] * $stage['model_price'])); ?>đ</p>
        </div>
    </div>
    <div class="formula_item d-flex align-items-center color_brown mb-1">
        <p class="formula_name font_bold">(2) Chi phí vật tư:</p>
        <div class="formula_content d-flex align-items-center">
            <p class="formula_param mx-2">
                Dài (<?php echo e($size['length']); ?>) x Rộng x ĐG chất liệu cán phủ trên x (SL tờ in cả BH + BH thiết bị)  x Số mặt cán phủ trên
            </p>
            <p class="font_bold formula_result mr-2"> = <?php echo e($size['length']); ?> x <?php echo e($size['width']); ?> x <?php echo e($stage['materal_cover_price']); ?> x <?php echo e((int) @$stage['cover_supp_qty']); ?> x <?php echo e($stage['cover_face']); ?></p>
            <p class="font_bold formula_result"> = <?php echo e(number_format($size['length'] * $size['width'] * $stage['materal_cover_price'] * (int) @$stage['cover_supp_qty'] * $stage['cover_face'])); ?>đ</p>
        </div>
    </div>   
    <div class="formula_item d-flex align-items-center color_brown mb-1">
        <p class="formula_name font_bold">(3) Chi phí chỉnh máy:</p>
        <div class="formula_content d-flex align-items-center">
            <p class="formula_param mx-2">
                ĐG chỉnh máy (<?php echo e($stage['shape_price']); ?>)
            </p>
            <p class="font_bold formula_result"> = <?php echo e(number_format($stage['shape_price'])); ?>đ</p>
        </div>
    </div> 
    <div class="formula_item d-flex align-items-center color_brown mb-1">
        <p class="formula_name font_bold">(4) Chi phí lượt:</p>
        <div class="formula_content d-flex align-items-center">
            <p class="formula_param mx-2">
                (SL tờ in cả BH + BH thiết bị) x ĐG lượt  x  Số mặt cán phủ trên
            </p>
            <p class="font_bold formula_result"> = <?php echo e((int) @$stage['cover_supp_qty']); ?> x <?php echo e($stage['work_price']); ?> x <?php echo e($stage['cover_face']); ?></p>
            <p class="font_bold formula_result"> = <?php echo e(number_format((int) @$stage['cover_supp_qty'] * $stage['work_price'] * $stage['cover_face'])); ?>đ</p>
        </div>
    </div>
    <p class="fs-15 font_bold">Tổng chi phí cho máy cán: (1) + (2) + (3) + (4) = <?php echo e(number_format($stage['metalai_cover_price'])); ?>đ</p>       
</div>

<div class="mt-2 pt-2 border_top_thin">
    <p class="fs-15 font_bold color_red">Tổng chi phí : Tổng chi phí cán metalai + Tổng chi phí cán phủ trên = <?php echo e((int) @$stage['metalai_price']); ?> + <?php echo e((int) @$stage['metalai_cover_price']); ?> = <?php echo e(number_format($stage['total'])); ?>đ</p>       
</div><?php /**PATH /home/dell/Desktop/code/td-company-app/resources/views/quotes/profits/papers/metalai.blade.php ENDPATH**/ ?>