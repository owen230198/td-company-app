
<?php $__env->startSection('content'); ?>
    <div class="dashborad_content">
        <?php echo $__env->make('table.form_search', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="d-flex align-center justify-content-end my-3">
            <button type="submit"
                class="main_button bg_main color_white smooth bg_green border_green radius_5 font_bold smooth mr-2"
                form="form-search" value="submit">
                <i class="fa fa-filter mr-2 fs-15" aria-hidden="true"></i>Tìm kiếm
            </button>
            <?php if($tableItem['insert'] == 1): ?>
                <a href="<?php echo e(url('insert/' . $tableItem['name'].''.@$param_action)); ?>"
                    class="main_button bg_main color_white smooth bg_green border_green radius_5 font_bold smooth mr-2">
                    <i class="fa fa-plus mr-2 fs-15" aria-hidden="true"></i>Thêm mới
                </a>
            <?php endif; ?>
            <?php if($tableItem['remove']): ?>
                <button class="main_button bg_red color_white smooth radius_5 font_bold smooth red_btn" data-toggle="modal"
                    data-target="#multiDeleteModal">
                    <i class="fa fa-trash mr-2 fs-15" aria-hidden="true"></i>Xóa
                </button>
            <?php endif; ?>
            <button type="button" data-src = "<?php echo e(url('view/n_log_actions?default_data={"table_map":"'.$tableItem['name'].'"}&nosidebar=1')); ?>" 
            class="btn btn-primary main_button bg_main color_white smooth bg_green border_green radius_5 font_bold smooth ml-2 load_view_popup" 
            data-toggle="modal" data-target="#actionModal">
                <i class="fa fa-history mr-2 fs-15" aria-hidden="true"></i>Lịch sử
            </button>
            <a href="javascript:void(0)" class="main_button bg_main color_white smooth bg_green border_green radius_5 font_bold smooth ml-2">
                <i class="fa fa-book mr-2 fs-15" aria-hidden="true"></i>Trợ giúp
            </a>
        </div>
        <?php if(count($data_tables) > 0): ?>
            <div class="paginate_view d-flex align-center justify-content-between mb-3">
                <?php echo $data_tables->appends(request()->input())->links('pagination::bootstrap-4'); ?>

            </div>
                <?php echo $__env->yieldContent('type'); ?>
            <div class="paginate_view d-flex align-center justify-content-between mt-3">
                <?php echo $data_tables->appends(request()->input())->links('pagination::bootstrap-4'); ?>

            </div>
        <?php else: ?>
            <p class="fs-15 font-italic color_red">Chưa có dữ liệu <?php echo e(@$title); ?> !</p>
        <?php endif; ?>
    </div>
    <?php echo $__env->make('table.remove_confirm', ['table_name' => $tableItem['name'], 'table_note' => $tableItem['note']], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('table.remove_confirm_check', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('table/action_popup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\td-app\td-company-app\resources\views/table/base_table.blade.php ENDPATH**/ ?>