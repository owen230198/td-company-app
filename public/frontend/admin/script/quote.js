var loadDataPopup = function()
{
	$(document).on('click', '.load_view_popup', function(event) {
		event.preventDefault();
		var src = $(this).data('src');
		$('.modalAction').find('iframe').attr('src', src);
	});
}

var submitPopUpAction = function()
{
	$(document).on('submit', '.popupActionForm', function(event) {
		event.preventDefault();
		$('.close_action_popup', parent.document).trigger('click');
		window.parent.toastr['success']('Nguyen duy khanh');
	});
}

var changeActiveStage = function()
{
	$(document).on('change', '.change_active_stage', function(event) {
		event.preventDefault();
		parent = $(this).closest('.incredent_items');
		if ($(this).prop("checked") == true) {
			parent.find('.incredent_content').fadeIn();
		}else{
			parent.find('.incredent_content').fadeOut();	
		}
	});
}

var selectConfigs = function() {
  if($('select.select_config').length > 0){
    $('select.select_config').select2({
      minimumResultsForSearch: 1
    });
  };
};
var getExQuantityPaper = function(allqty, valqty, addqty)
{
	qty = allqty/valqty;
    add_qty = qty*addqty/100;
    ex_qty = qty+add_qty;
    return ex_qty;
}
var changQtyInput = function(){
  $(document).on('change','input[name=n_qty]',function(e){
    e.preventDefault();
    parent = $(this).closest('.formActionS');
    var allqty = parseInt(parent.find('input[name=qty_pro]').val());
    var valqty = parseInt($(this).val());
    var addqty = parseInt(parent.find('input[name=add_paper]').val());
    ex_qty = getExQuantityPaper(allqty, valqty, addqty);
    parent.find('input[name=qty_paper]').val(Math.ceil(ex_qty));
   });

  $(document).on('change','input[name=qty_pro]',function(e){
    e.preventDefault();
    parent = $(this).closest('.formActionS');
    var allqty = $(this).val();
    var valqty = parseInt(parent.find('input[name=n_qty]').val());
    var addqty = parent.find('input[name=add_paper]').val();
    ex_qty = getExQuantityPaper(allqty, valqty, addqty);
    parent.find('input[name=qty_paper]').val(Math.ceil(ex_qty));
   });
}
$(function(){
	loadDataPopup();
	// submitPopUpAction();
	// selectConfigs();
	changeActiveStage();
	changQtyInput();
});