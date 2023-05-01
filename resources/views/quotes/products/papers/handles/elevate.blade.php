@php
    $key_stage = \TDConst::ELEVATE;
    $paper_elevate_ext_price = [
            'name' => 'product['.$pro_index.'][paper]['.$supp_index.']['.$key_stage.'][ext_price]',
            'note' => 'Thêm giá cho khuôn phức tạp',
            'attr' => ['type_input' => 'number'],
            'value' => @$data_handle['ext_price'] ?? 0
        ] 
@endphp
<div class="d-flex align-items-center">
    @include('view_update.view', $paper_elevate_ext_price)
    <span class="ml-2 font-italic color_red fs-12">Khuôn nhiều chi tiết khác thường</span>
</div>

@include('quotes.products.papers.handles.select_device', ['key_device' => $key_stage, 'value' => @$data_handle['machine']])

@if (!isHardBox(@$cate))
    <div class="mt-2 pt-2 border_top_white">
        @include('quotes.products.papers.handles.float', ['data_handle' => @$data_handle['float']])
    </div>
@endif