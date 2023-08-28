var setAdvanceCostOrder = function()
{
    $(document).on('keyup change', '.__order_advance_input', function(event) {
        event.preventDefault();
        let parent = $(this).closest('.__order_field_module');
        let advance = $(this).val();
        let total = parent.find('.__order_total_input').val();
        let rest = total - advance;
        let rest_val = rest > 0 ? rest : 0;
        parent.find('.__order_rest_input').val(rest_val);  
    });
}

var moduleVATOrder = function()
{
    $(document).on('change', 'input.__vat_order_checkbox', function(event){
        event.preventDefault();
        let parent = $(this).closest('.__order_field_module');
        let vat_per = $(this).val() == 1 ? getEmptyDefault($(this).attr('vat_per'), 0, 'float') : 0;
        let total = getEmptyDefault(parent.find('.__quote_total_input').val(), 0, 'float');
        let add_per = total*vat_per/100;
        let order_amount = total+add_per;
        parent.find('input.__order_total_input').val(order_amount);
        parent.find('.__order_advance_input').trigger('change');
    });
}

var applyOrderStep = function()
{
    $(document).on('click', '.__apply_order', function(event){
        event.preventDefault();
        let form = $(this).closest('.__form_order');
        let stage = $(this).data('stage');
        let type = $(this).data('type');
        let form_data = form.serialize();
        let id = $(this).data('id');
        ajaxBaseCall({
            url:getBaseRoute('apply-order/'+stage+'/'+type+'/'+id), 
            type:'POST', 
            data:form_data
        });
    })
}

var planHandleElevateModule = function()
{
    $(document).on('keyup change', 'input.input_elevate_change', function(event){
        event.preventDefault();
        let parent = $(this).closest('.plan_handle_elevate_module');
        let supp_qty = parseInt(parent.find('input.plan_input_supp_qty').val());
        let elevate = parseInt(parent.find('input.plan_input_elevate').val());
        let total_elevate = supp_qty*elevate;
        let input_total_elevate = parent.find('input.plan_input_total_elevate')
        input_total_elevate.val(total_elevate);
        input_total_elevate.trigger('change');
        
    });

    $(document).on('change', 'input.plan_input_total_elevate', function(event){
        event.preventDefault();
        updateHandleWareHouse($(this));
    });

    $(document).on('keyup change', 'input.plan_input_warehouse_size', function(event)
    {
        event.preventDefault();
        updateHandleWareHouse($(this));
    });
}

var updateHandleWareHouse = function(obj)
{
    let parent = obj.closest('.plan_handle_supply_module');
    let size = parent.find('input.plan_input_warehouse_size');
    let bool = true;
    size.each(function(){
        if ($(this).val() <= 0) {
            bool = false;    
        }
    });
    if (bool == true) {
        let supp_qty = parseInt(parent.find('input.plan_input_supp_qty').val());
        parent.find('input.plan_input_warehouse_qty').val(supp_qty);    
    }
}

var planGetNeddSupply= function(parent)
{
    let base = parent.data('need');
    let take = 0;
    parent.find('.__handle_supply_item').each(function(){
        take += $(this).data('take');
    });
    return base - take;
}

var planChoseSupplyModule = function()
{
    $(document).on('change', 'select.__select_in_warehouse', function(event)
    {
        event.preventDefault();
        let parent = $(this).closest('.__supply_handle_list');
        let item = $(this).closest('.__handle_supply_item');
        item.data('take', 0);
        let need = planGetNeddSupply(parent);
        let table = parent.data('table');
        let target = item.find('.__handle_supply_detail_ajax');
        let value = $(this).val();
        let url = 'select-supply-warehouse/'+table+'?supply='+value+'&need='+need;
        if (!empty(value)) {
            $('#loader').fadeIn(200);
            $.ajax({
                url: getBaseRoute(url),
                type: 'GET'
            })
            .done(function(obj){
                if (obj.code == 100) {
                    swal('Không thành công', obj.message, 'error');    
                }else{
                    data = obj.data;
                    target.fadeIn();
                    target.find('.__inhouse').text(data.inhouse);
                    afterPlanSelectSupply(table, data, target, item);
                }
                $('#loader').delay(200).fadeOut(500); 
            })
        }else{
            target.fadeOut();
            target.find('.__inhouse').text(0);
            afterPlanSelectSupply(table, data, target, item, true);
        }
    });
}

var afterPlanSelectSupply = function(table, data, target, item, reset = false) 
{
    if (reset) {
        target.find("input[name*='qty']").val(0);
        target.find('.__takeout').text(0);
        item.data('take', 0);
        target.find('.__rest').text(0);
        target.find('.__lack').parent().fadeOut();
        target.find('.__lack').parent().text(0);    
    }else{
        if (table == 'square_warehouses') {
            target.find("input[name*='qty']").val(data.takeout);
            target.find('.__takeout').text(data.takeout);
            item.data('take', data.takeout);
            target.find('.__rest').text(data.rest);
            target.find('.__lack').text(data.lack);
            if (data.lack == 0) {
                target.find('.__lack').parent().fadeOut();    
            }else{
                target.find('.__lack').parent().fadeIn();    
            }
        }else if (table == 'print_warehouses') {
            target.find('.__rest').text(data.inhouse);  
            target.find('.__lack').parent().fadeOut();   
        }
    }
}

var planAddSupplyHandle = function()
{
    $(document).on('click', 'button.__supply_handle_button_add', function(event){
        event.preventDefault();
        let parent = $(this).parent();
        let ajax_target = parent.find('.__supply_handle_list');
        let param = $(this).data('param');
        let items = ajax_target.find('.__handle_supply_item');
        let index = items.length;
        let except_value = '';
        items.each(function(){
            let select_supply = $(this).find('select.__select_in_warehouse');
            select_supply.attr('disabled', 'disabled');
            except_value += ''+select_supply.val()+',';
        })
        let url = 'add-select-supply-handle?index='+index+''+param+'&except_value='+except_value;
        ajaxViewTarget(url, ajax_target, ajax_target, 2);
    });
}

var planRemoveSupplyHandle = function()
{
    $(document).on('click', 'button.__supply_handle_btn_remove', function(event){
        let parent = $(this).closest('.__supply_handle_list');
        let items = parent.find('.__handle_supply_item');
        $(this).parent().remove();
        if (items.length  == 2) {
            items.each(function(){
                $(this).find('select.__select_in_warehouse').attr('disabled', false);
            })
        }
    })
}

var planHandleSupplyQty = function()
{
    $(document).on('keyup change', 'input.__supp_plan_qty_change', function(event){
        event.preventDefault();
        let parent = $(this).closest('.__handle_supply_item');
        let need_qty = getEmptyDefault(parent.find('input.__qty_supp_plan').val(), 0, 'float');
        let nqty = getEmptyDefault(parent.find('input.__nqty_supp_plan').val(), 0, 'float');
        let takeout = need_qty*nqty;
        parent.find('input.__total_qty_supp_plan').val(takeout);
        let inhouse = getEmptyDefault(parent.find('.__inhouse').text(), 0, 'float');
        if (takeout > inhouse) {
            parent.find('.__rest').text(0);
            let lack = takeout - inhouse;
            parent.find('.__lack').text(lack);
            parent.find('.__lack').parent().fadeIn();     
        }else{
            parent.find('.__rest').text(inhouse - takeout);
            parent.find('.__lack').text(0);
            parent.find('.__lack').parent().fadeOut();  
        }
    });
}

$(function(){
    setAdvanceCostOrder(); 
    moduleVATOrder();
    applyOrderStep();
    planHandleElevateModule();
    planChoseSupplyModule();
    planAddSupplyHandle();
    planRemoveSupplyHandle();
    planHandleSupplyQty();
});