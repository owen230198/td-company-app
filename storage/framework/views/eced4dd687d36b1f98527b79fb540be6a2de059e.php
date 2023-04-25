<ul class="nav nav-pills mb-3 quote_pro_nav_link" id="quote-pro-tab" role="tablist">
    <label class="mb-0 min_210 mr-3"></label>
    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $i => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <li class="nav-item">
            <a class="nav-link<?php echo e($i == 0 ? ' active' : ''); ?>" id="quote-pro-<?php echo e($i); ?>-tab" data-toggle="pill" href="#quote-pro-<?php echo e($i); ?>" 
            role="tab" aria-controls="quote-pro-<?php echo e($i); ?>" aria-selected="true">
                <?php echo e(@$product['name']); ?>

            </a>
        </li>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul>

<div class="tab-content" id="quote-pro-tabContent">
    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pro_index => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="tab-pane fade<?php echo e($pro_index == 0 ? ' show active' : ''); ?> tab_pane_quote_pro" id="quote-pro-<?php echo e($pro_index); ?>" role="tabpanel" aria-labelledby="quote-pro-<?php echo e($pro_index); ?>-tab">
            <div class="config_handle_paper_pro">
                <div class="mb-2 base_product_config">
                    <?php
                        $pro_name_field = [
                            'name' => 'product['.$pro_index.'][name]',
                            'note' => 'Tên sản phẩm',
                            'attr' => ['required' => 1, 'inject_class' => 'quote_set_product_name'],
                            'value' => @$product['name']
                        ] 
                    ?>
                    <?php echo $__env->make('view_update.view', $pro_name_field, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                    <?php
                    $pro_name_field = [
                        'name' => 'product['.$pro_index.'][qty]',
                        'note' => 'SL sản phẩm',
                        'attr' => ['type_input' => 'number', 'required' => 1, 'inject_class' => 'input_pro_qty'],
                        'value' => @$product['qty']
                    ] 
                ?>
                <?php echo $__env->make('view_update.view', $pro_name_field, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    
                    <?php
                        $pro_category_field = [
                            'name' => 'product['.$pro_index.'][category]',
                            'type' => 'linking',
                            'note' => 'Nhóm sản phẩm',
                            'attr' => ['required' => 1 , 'inject_class' => 'select_quote_procategory', 'inject_attr' => 'proindex='.$pro_index],
                            'other_data' => ['data' => ['table' => 'product_categories']],
                            'value' => @$product['category']
                        ] 
                    ?>
                    <?php echo $__env->make('view_update.view', $pro_category_field, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                    <div class="quote_product_design_config">
                        <?php
                            $quote_pro_design = [
                                'name' => 'product['.$pro_index.'][design]',
                                'note' => 'thiết kế',
                                'type' => 'linking',
                                'other_data' => ['data' => ['table' => 'design_types', 'select' => ['id', 'name']]],
                                'value' => @$product['design']
                            ]
                        ?>
                        <?php echo $__env->make('view_update.view', $quote_pro_design, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>

                    <?php
                        $pro_size_field = [
                            'name' => 'product['.$pro_index.'][size]',
                            'note' => 'Kích thước hộp',
                            'attr' => ['placeholder' => 'D x R x C'],
                            'value' => @$product['size']
                        ]
                    ?>
                    <?php echo $__env->make('view_update.view', $pro_size_field, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
                <div class="ajax_product_view_by_category">
                    
                </div>
                <?php if(!empty($product['id'])): ?>
                    <input type="hidden" name="product[<?php echo e($pro_index); ?>][id]" value="<?php echo e($product['id']); ?>">
                    <div class="text-center">
                        <button type="button" 
                        class="main_button color_white bg_green border_green radius_5 font_bold smooth show_config_handle_quote"
                        proindex = <?php echo e($pro_index); ?> data-proid = <?php echo e($product['id']); ?> data-category = <?php echo e(@$product['category']); ?>>
                            <i class="fa fa-angle-double-down fs-14 mr-2" aria-hidden="true"></i>
                            <span>Xem chi tiết sản xuất</span>
                        </button>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div><?php /**PATH C:\xampp\htdocs\td-company-app\resources\views/quotes/products/ajax_view.blade.php ENDPATH**/ ?>