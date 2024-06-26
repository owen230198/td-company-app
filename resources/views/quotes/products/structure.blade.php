<div class="{{ !empty($rework) ? 'd-none' : '' }}">
    @include('quotes.products.size')
</div>
<div class="product_structure_quote">
    @if (count($elements) > 1)
        <ul class="nav nav-pills mb-3 quote_pro_strct_nav_link {{ !empty($pos_tab_0) ? 'top_95' : '' }}" id="quote-pro-{{ $pro_index }}-struct-tab" role="tablist">
            @foreach ($elements as $key => $element)
                <li class="nav-item">
                    <a class="nav-link{{ $key == 0 ? ' active' : '' }}" id="quote-pro-{{ $pro_index }}-struct-{{ $element['key'] }}-tab" data-toggle="pill" href="#quote-pro-{{ $pro_index }}-struct-{{ $element['key'] }}" 
                    role="tab" aria-controls="quote-pro-{{ $pro_index }}-struct-{{ $element['key'] }}" aria-selected="true">{{ $element['note'] }}</a>
                </li>   
            @endforeach
        </ul>

        <div class="tab-content" id="quote-pro-{{ $pro_index }}-struct-tabContent">
            @foreach ($elements as $key => $element)
                <div class="tab-pane fade{{ $key == 0 ? ' show active' : '' }} tab_pane_quote_pro" id="quote-pro-{{ $pro_index }}-struct-{{ $element['key'] }}" role="tabpanel" aria-labelledby="quote-pro-{{ $pro_index }}-struct-{{ $element['key'] }}-tab">
                    @include('quotes.products.supplies.view', ['supp_view' => $element['key'], 'supp_table' => @$element['table'], 'data_supply' => @$element['data'], 'rework' => @$rework])
                </div>
            @endforeach
        </div>
    @else
        @include('quotes.products.supplies.view', ['supp_view' => 'papers', 'data_supply' => @$elements[0]['data'], 'supp_table' => 'papers', 'rework' => @$rework])
    @endif
</div>