@extends('orders.users.6.supply_handles.supplies')
@section('process')
    @php
        $key_supp = \TDConst::SILK;
        $silk_divide = \TDConst::SILK_SIZE_DIVIDE;
        $silk_compen_percent = (float) getDataConfig('QuoteConfig', 'CARTON_COMPEN_PERCENT');
        $silk_plus = \TDConst::SILK_SIZE_PLUS;
        $pro_silk_supply = [
            'name' => 'product['.$pro_index.']['.$key_supp.']['.$supp_index.'][size][supply_price]',
            'type' => 'linking',
            'note' => 'Chọn vật tư',
            'value' => @$supply_size['supply_price'],
            'other_data' => ['config' => ['search' => 1], 
            'data' => ['table' => 'supply_prices', 'where' => ['type' => $key_supp]]]
        ];
    @endphp
    @include('quotes.products.supplies.check_index_data')
    
    @include('quotes.products.supplies.title_config', ['divide' => $silk_divide, 'name' => 'vải lụa'])

    @include('quotes.products.supplies.quantity_config', 
    ['compen_percent' => $silk_compen_percent])

    @include('quotes.products.supplies.size_config', ['plus' => $silk_plus, 'divide' => $silk_divide])

    @include('view_update.view', $pro_silk_supply)
    @php
        $where = [
                    'type' => $key_supp,
                    'supp_price' => @$supply_size['supply_price'],
                    'status' => 'imported'
                ];
    @endphp
    @include('orders.users.6.supply_handles.handle', ['compen_percent' => $silk_compen_percent, 'where_size_type' => $where])
@endsection