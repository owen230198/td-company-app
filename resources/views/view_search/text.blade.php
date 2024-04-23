@if (@$attr['type_input'] == 'price')
    @php
        $value_from = !empty($data_search[$name]['from']) ? $data_search[$name]['from'] : '';
        $value_to = !empty($data_search[$name]['to']) ? $data_search[$name]['to'] : '';
    @endphp
    <div class="d-flex align-items-center">
        <input type="text" name="{{ $name }}[from]" class="form-control" placeholder="Từ" value = "{{ $value_from }}"/>
        <span class="mx-2">-</span>
        <input type="text" name="{{ $name }}[to]" class="form-control" placeholder="đến" value = "{{ $value_to }}"/>
    </div>
@else
    <input type="text" name="{{ $name }}" class="form-control" placeholder="Nhập thông tin {{ $note }}" value = "{{ @$data_search[$name] }}"/>
@endif
