@php
    $ext_pro_feild_file = \App\Models\Product::getFeildFileByStage(@$stage, $product);
@endphp
@foreach ($ext_pro_feild_file as $key => $ext_feild_file)
    @php
        $ext_feild_file['value'] = @$product[$key];
        $ext_feild_file['name'] = $pro_base_name_input.'['.$key.']';
        $ext_feild_file['table_map'] = 'products';
        $ext_feild_file['other_data']['field_name'] = $key;
        $ext_feild_file['other_data']['obj_id'] = @$product['id'];
    @endphp
    @include('view_update.view', $ext_feild_file)     
@endforeach

@if (@$stage == \App\Models\Order::TECH_SUBMITED)
    @php
        $product_note = !empty($product['note']) ? json_decode($product['note'], true) : [];
        $note_values = [
            'note_print' => 
            [
                'name' => $pro_base_name_input.'[note][print]',
                'note' => 'Ghi chú cho khâu in',
                'type' => 'linking',
                'other_data' => ['data' => ['table' => 'print_notes', 'select' => ['id', 'name']]],
                'value' => @$product_note['print']
            ],
            'note_handle' =>
            [
                'name' => $pro_base_name_input.'[note][handle]',
                'note' => 'Ghi chú cho khâu gia công',
                'type' => 'textarea',
                'value' => @$product_note['handle']
            ]
        ]
    @endphp
    @foreach ($note_values as $note_value)
        @include('view_update.view', $note_value)     
    @endforeach
@endif