@php
    $key_stage = \TDConst::COMPRESS;
    $paper_compress_price = [
        'name' => $paper_hd_base_name.'['.$key_stage.'][price]',
        'note' => 'Giá ép nhũ/1 bát sản phẩm',
        'attr' => ['type_input' => 'number'],
        'value' => @$data_handle['price'] ?? 0
    ];
    $paper_compress_shape_price = [
        'name' => $paper_hd_base_name.'['.$key_stage.'][shape_price]',
        'note' => 'TIỀN KHUÔN/1 BÁT SẢN PHẨM',
        'attr' => ['type_input' => 'number'],
        'value' => @$data_handle['shape_price'] ?? 0
    ] 
@endphp
<div class="d-flex align-items-center">
    @include('view_update.view', $paper_compress_price)
    <span class="ml-2 fs-12 font-italic color_red">Không phải đơn giá/1 tờ in</span>
</div>

<div class="d-flex align-items-center">
    @include('view_update.view', $paper_compress_shape_price)
    <span class="ml-2 fs-12 font-italic color_red">không phải tiền khuôn/tờ in</span>
</div>

@include('quotes.products.papers.handles.select_device', ['key_device' => $key_stage, 'value' => @$data_handle['machine']])