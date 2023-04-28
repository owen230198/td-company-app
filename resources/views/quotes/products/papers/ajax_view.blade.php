<div class="quote_product_structure quote_supp_item position-relative{{ $supp_index > 0 ? ' mt-4 border_green p-3 radius_5' : '' }}" data-index={{ @$supp_index ?? 0 }}>
    @php
        $key_supp = \TDConst::PAPER;
        $paper_compen_percent = \TDConst::COMPEN_PERCENT;
        $paper_compen_num = \TDConst::COMPEN_NUM;

        $pro_paper_name = [
            'name' => 'product['.$pro_index.']['.$key_supp.']['.$supp_index.'][name]',
            'note' => 'Tên SP giấy in',
            'attr' => ['required' => 1, 
                        'inject_class' => $supp_index == 0 ? 'quote_receive_paper_name_main' : 'quote_receive_paper_name_ext'],
            'value' => @$supply_obj->name ?? @$supp_name
        ];
        $pro_paper_materals = [
            'name' => 'product['.$pro_index.']['.$key_supp.']['.$supp_index.'][size][materal]',
            'type' => 'linking',
            'note' => 'Chọn chất liệu giấy',
            'attr' => ['required' => 1, 'inject_class' => 'select_paper_materal'],
            'other_data' => ['data' => ['table' => 'materals','where' => ['type' => $key_supp], 'ext_option' => [['id' => 0, 'name' => 'Giấy khác']]]],
            'value' => @$supply_size['materal']
        ];
        $pro_paper_qttv = [
            'name' => 'product['.$pro_index.']['.$key_supp.']['.$supp_index.'][size][qttv]',
            'note' => 'Định lượng',
            'attr' => ['type_input' => 'number', 'required' => 1],
            'value' => @$supply_size['qttv']
        ];
    @endphp
    @if (!empty($supply_obj->id))
        <input type="hidden" name="product[{{ $pro_index }}][{{ $key_supp }}][{{ $supp_index }}][id]" value="{{ $supply_obj->id }}">
    @endif
    @if ($supp_index == 0 || @$supply_obj->main == 1)
        <input type="hidden" value="1" name="product[{{ $pro_index }}][{{ $key_supp }}][{{ $supp_index }}][main]"> 
    @else 
        <span class="remove_ext_paper_quote d-flex bg_red color_white red_btn smooth"><i class="fa fa-times" aria-hidden="true"></i></span>   
    @endif
    <div class="mb-2 paper_product_config">
        @if ($supp_index > 0)
            @php
                $pro_paper_extend_name = [
                    'name' => '',
                    'type' => 'select',
                    'note' => 'Chọn tên phụ',
                    'attr' => ['required' => 1, 'inject_class' => 'select_ext_name_paper'],
                    'other_data' => ['data' => ['options' => [
                        @$supp_name => 'Chọn tên phụ cho lệnh in này',
                        @$supp_name.' (Tờ bồi khay định hình)' => '1. Tờ bồi khay định hình',
                        @$supp_name.' (Tờ bồi thành)' => '2. Tờ bồi thành',
                        @$supp_name.' (Tờ bồi mặt trong hộp)' => '3. Tờ bồi mặt trong hộp',
                        @$supp_name.' (Khay giấy định hình)' => '4. Khay giấy định hình',
                        @$supp_name.' (Tờ phụ trang trí)' => '5. Tờ phụ trang trí'
                    ]]]
                ] 
            @endphp
            @include('view_update.view', $pro_paper_extend_name)
        @endif
        <h3 class="fs-14 text-uppercase border_top_eb pt-3 mt-3 text-center quote_handle_title">
            <span>{{ $supp_index == 0 ? 'Phần giấy in' : 'Lệnh in thêm thứ '.$supp_index }}</span>
        </h3>
        @include('view_update.view', $pro_paper_name)
        
        @include('quotes.products.supplies.quantity_config', 
        ['compen_percent' => $paper_compen_percent, 'compen_num' => $paper_compen_num])
        
        <div class="materal_paper_module">
            @include('view_update.view', $pro_paper_materals)

            @include('view_update.view', $pro_paper_qttv)
            <div class="d-flex align-items-center mb-2 fs-13">
                <label class="mb-0 min_210 text-capitalize text-right mr-3">
                    <span class="fs-15 mr-1">*</span>Kích thước khổ giấy tối ưu
                </label>
                <div class="d-flex justify-content-between align-items-center">
                    <input type="number" name = 'product[{{ $pro_index }}][{{ $key_supp }}][{{ $supp_index }}][size][length]' placeholder="Chiều dài (cm)" 
                    class="form-control medium_input" step="any" value="{{ @$supply_size['length'] }}"> 
                    <span class="mx-3">X</span>
                    <input type="number" name = 'product[{{ $pro_index }}][{{ $key_supp }}][{{ $supp_index }}][size][width]' placeholder="Chiều rộng (cm)" 
                    class="form-control medium_input" step="any"value="{{ @$supply_size['width'] }}"> 
                    <div class="paper_price_config_input" style="display:{{ @$supply_size['materal'] != 0 ? 'none' : 'block' }}">
                        <div class="d-flex align-items-center">
                            <span class="mx-3">X</span>
                            <input type="number" name = 'product[{{ $pro_index }}][{{ $key_supp }}][{{ $supp_index }}][size][unit_price]' placeholder="Đơn giá" 
                            class="form-control medium_input price_input_paper" 
                            {{ @$supply_size['materal'] != 0 ? 'disabled="disabled"' : '' }} step="any" value="{{ @$supply_size['unit_price'] }}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('quotes.products.papers.after_print', ['data_paper' => @$supply_obj])
</div>

