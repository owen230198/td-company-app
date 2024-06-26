@php
    $key_stage = \TDConst::FLOAT;
    $elevate_key = \TDConst::ELEVATE;
    $float_base_name = !empty($float_extend) ? '['.$elevate_key.']['.$key_stage.']' : '['.$key_stage.']';
    $paper_float_price = [
        'name' => $paper_hd_base_name.''.$float_base_name.'[price]',
        'note' => 'Giá tiền thúc nổi 1 sp',
        'attr' => ['type_input' => 'number', 'inject_class' => '__config_float_price_input'],
        'value' => @$data_handle['price'] ?? 0
    ];
    $paper_float_shape_price = [
        'name' => $paper_hd_base_name.''.$float_base_name.'[shape_price]',
        'note' => 'TIỀN KHUÔN/1 BÁT SẢN PHẨM',
        'attr' => ['type_input' => 'number', 'inject_class' => '__config_float_price_input'],
        'value' => @$data_handle['shape_price'] ?? 0
    ]  
@endphp
<div class="d-flex align-items-center">
    @include('view_update.view', $paper_float_price)
    <span class="ml-2 fs-12 font-italic color_red">Giá lượt/bát sp (không phải giá lượt/ tờ in)</span>
</div>

<div class="d-flex align-items-center">
    @include('view_update.view', $paper_float_shape_price)
    <span class="ml-2 fs-12 font-italic color_red">Không phải tiền khuôn/ 1tờ in</span>
</div>

@if (empty($float_extend))
    @include('quotes.products.papers.handles.select_device', ['key_device' => $key_stage, 'value' => @$data_handle['machine']])
@endif