@extends('index')
@section('content')
<form action="do-insert-detail" method="POST" class="popupActionForm p-3 pb-5">
  @csrf
  <div class="modal-header mb-4 p-0 pb-2">
    <h3 class="modal-title fs-17 font_bold text-capitalize" id="exampleModalLongTitle">{{ @$title?$title:'' }}</h3>
  </div>
  <ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" id=" general-info-tab" data-toggle="tab" href="#general-info" role="tab" aria-controls="general-info" aria-selected="true">Thông tin chung</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="detail-config-tab" data-toggle="tab" href="#detail-config" role="tab" aria-controls="detail-config" aria-selected="true">Vật tư & sản xuất</a>
    </li>
  </ul>
  <div class="tab-content px-3 py-4 bg_white content_form" id="myTabContent">
    <div class="tab-pane fade show active" id="general-info" role="tabpanel" aria-labelledby="general-info-tab">
      @include('quotes.q_papers.general', ['some' => 'data'])
    </div>
    <div class="tab-pane fade" id="detail-config" role="tabpanel" aria-labelledby="detail-config-tab">
      <div class="list_config_incrideents">
        <div class="row">
          <div class="col-6">
            <div class="incredent_items">
              <div class="incredent_header d-flex align-item-centers">
                <label class="base_label mr-2 mb-0 label_quotes fs-16 font_bold d-flex align-item-centers">
                  <i class="fa fa-print mr-2 fs-23" aria-hidden="true"></i>In offset
                </label>
                <div class="checkbox_module">
                  <input type="hidden" name="" value = "0">
                  <input type="checkbox" class="toggle mx-auto change_submit"/>
                </div>   
              </div>  
            </div> 
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="group_btn_action_form popup">
    <button type="submit" class="station-richmenu-main-btn-area">
      <i class="fa fa-check mr-2 fs-18" aria-hidden="true"></i>Hoàn tất
    </button>
  </div>
</form>
@endsection
@section('script')
  <script src="{{ asset('frontend/admin/script/quote.js') }}" defer></script>
@endsection