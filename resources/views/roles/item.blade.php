<div class="form-group d-flex mb-2 py-2 border_bot_eb">
    <label class="mb-0 mr-3 min_155">{{ @$arrRoleTitle[$name] }}</label>
    @include('roles.checkbox', ['name' => $name, 'value' => @$listRole[$name]])
</div>
