@php
    $key_stage = \TDConst::UV;
    $paper_uv_face = [
        'name' => $paper_hd_base_name.'['.$key_stage.'][face]',
        'type' => 'select',
        'note' => 'Số mặt',
        'value' => @$data_handle['face'],
        'other_data' => ['data' => ['options' => ['Chọn số mặt', 1, 2]]]
    ];
    $paper_uv_materal = [
        'name' => $paper_hd_base_name.'['.$key_stage.'][materal]',
        'type' => 'linking',
        'note' => 'mực in',
        'value' => @$data_handle['materal'],
        'other_data' => ['data' => ['table' => 'materals', 'where' => ['type' => $key_stage], 'select' => ['id', 'name']]]
    ];
@endphp
@include('view_update.view', $paper_uv_face)

@include('view_update.view', $paper_uv_materal)

@include('quotes.products.papers.handles.select_device', ['key_device' => $key_stage, 'value' => @$data_handle['machine']])