@foreach ($fields as $field)
    @php
        $name = $field['name'];
        $field['name'] = 'supply['.$index.']['.$name.']';
        $arr = processArrField($field);
        $arr['min_label'] = 115;
        $arr['default_field']['type'] = $type;
        $arr['value'] = @$group_value[$name];
        if (!GroupUser::isPlanHandle()) {
            $arr['attr']['readonly'] = 1;
        }
    @endphp
    @if ($field['name'] != 'created_at')
        @include('view_update.view', $arr)         
    @endif  
@endforeach