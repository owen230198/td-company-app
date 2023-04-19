@php
    $key_stage = \TDConst::PEEL;
    $paper_nqty_peel = [
        'name' => 'product['.$pro_index.'][paper]['.$supp_index.']['.$key_stage.'][nqty]',
        'note' => 'Số bát lề',
        'attr' => ['type_input' => 'number'],
        'value' => 0
    ] 
@endphp

@include('quotes.products.papers.handles.select_device', 
['key_device' => $key_stage, 'value' =>  getDeviceId(['key_device' => $key_stage, 'supply' => 'paper', 'default_device' => 1])])

@php
    $key_stage = \TDConst::EXT_PRICE;
    
@endphp
<div class="d-flex align-items-center">
    @include('view_update.view', $paper_nqty_peel)
    <span class="ml-1 color_red font-italic">Trường hợp hộp cứng ghép bát</span>
</div>