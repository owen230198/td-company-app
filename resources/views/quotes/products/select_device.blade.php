@php
    $device = [
        'name' => 'product['.$pro_index.']['.$element.']['.$supp_index.']['.$key_device.'][machine]',
        'type' => 'linking',
        'note' => $note,
        'value' => @$value ?? 0,
        'other_data' => ['data' => ['table' => 'devices', 'where' => ['key_device' => $key_device, 'supply' => $element], 'select' => ['id', 'name']]]
    ] 
@endphp
@include('view_update.view', $device)