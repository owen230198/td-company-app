<input type="{{ @$attr['type_input'] ?? 'text' }}" 
class="form-control" name="{{ $name }}" 
value="{{ @$value }}" 
{{ @$attr['required'] == 1 ? 'required' : '' }} 
{{ @$attr['disable_field'] == 1 ? 'disabled' : '' }}
{{ @$attr['type_input'] == 'number' ? 'min=0' : '' }} 
placeholder="{{ @$attr['placehoder'] ?? 'Nhập '.strtolower($note) }}">