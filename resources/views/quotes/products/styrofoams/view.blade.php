<div class="mb-2 paper_product_config">
    @php
        $key_supp = \App\Constants\TDConstant::STYRO;
        $styro_compen_percent = \App\Constants\TDConstant::CARTON_COMPEN_PERCENT;
        $styro_compen_num = \App\Constants\TDConstant::CARTON_COMPEN_NUM;
        $styro_divide = \App\Constants\TDConstant::STYRO_SIZE_DIVIDE;
        $styro_plus = \App\Constants\TDConstant::STYRO_SIZE_PLUS;
        $key_device_elevate = \App\Constants\TDConstant::ELEVATE;
        $key_device_peel = \App\Constants\TDConstant::PEEL;
        $key_device_cut = \App\Constants\TDConstant::CUT;
    @endphp
    @include('quotes.products.supplies.title_config', ['divide' => $styro_divide, 'name' => 'mút phẳng'])
    
    @include('quotes.products.supplies.quantity_config', 
    ['compen_percent' => $styro_compen_percent, 'compen_num' => $styro_compen_num])

    @include('quotes.products.supplies.size_config', ['plus' => $styro_plus, 'divide' => $styro_divide])

    @include('quotes.products.supplies.select_supply_type')

    @include('quotes.products.select_device', 
    ['key_device' => $key_device_cut, 'note' => 'Máy xén', 
    'value' =>  getDeviceId(['key_device' => $key_device_cut, 'supply' => $key_supp, 'default_device' => 1]), 'element' => $key_supp])

    @include('quotes.products.select_device', 
    ['key_device' => $key_device_elevate, 'note' => 'Máy bế', 
    'value' =>  getDeviceId(['key_device' => $key_device_elevate, 'supply' => $key_supp, 'default_device' => 1]), 'element' => $key_supp])

    @include('quotes.products.select_device', 
    ['key_device' => $key_device_peel, 'note' => 'Máy bóc lề', 
    'value' =>  getDeviceId(['key_device' => $key_device_peel, 'supply' => $key_supp, 'default_device' => 1]), 'element' => $key_supp])
</div>