<select 
name="{{ @$singleRecord?'json_data_conf[soles_fill]':'c_process['.$key.'][json_data_conf][soles_fill]' }}" 
class="form-control">
    <option value="0">Chọn đế bồi</option>
    <option value="1" {{ @$dataConfProcess['soles_fill']==1?'selected':'' }}>Đế bồi đề can xi</option>
    <option value="2" {{ @$dataConfProcess['soles_fill']==2?'selected':'' }}>Đế bồi đề cusche in</option>
</select>