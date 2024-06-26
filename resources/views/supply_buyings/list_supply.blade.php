@extends('index')
@section('content')
    <div class="dashborad_content">
        @if (count($list_data) > 0)
            <div class="table_base_view position-relative">
                <h3 class="fs-14 text-uppercase pt-4 mt-4 text-center font_bold text-center color_green">{{ $title }}</h3>
                <h3 class="fs-14 text-uppercase py-2 my-2 text-center font_bold text-center color_green">
                    THông tin nhà cung cấp: {{ getFieldDataById('name', 'warehouse_providers', $data_buying->provider) }}
                </h3>
                <table class="table table-bordered mb-2 table_main">
                    <tr>
                        <th class="font-bold fs-13 text-center "><span>#</span></th>
                        <th class="font-bold fs-13">Loại vật tư</th>
                        <th class="font-bold fs-13">Vật tư cần mua</th>
                        <th class="font-bold fs-13 ">Số lượng cần mua</th>
                        <th class="font-bold fs-13 ">Đơn giá</th>
                        <th class="font-bold fs-13 ">Thành tiền</th>
                    </tr>
                    <tbody>
                        @foreach ($list_data as $key => $data)
                            <tr>
                                <td class="text-center"><span>{{ $key + 1 }}</span></td>
                                <td>
                                    @include('view_table.text', ['value' => getSupplyNameByKey(@$data->type)])
                                </td>
                                <td>
                                    @php
                                        $table_supply = tableWarehouseByType(@$data->type);
                                        $fields = (new \App\Services\AdminService)->getFieldAction($table_supply, 'get_other');
                                    @endphp
                                    @foreach ($fields as $field)
                                        @php
                                            $field = processArrField($field);
                                            $field['value'] = $data->{$field['name']};
                                            $field['history_view'] = true;
                                        @endphp
                                        <div class="mb-1 d-flex align-item-center">
                                            <label class="mr-1">{{ $field['note'] }}: </label>
                                            @include('view_table.'.$field['type'], $field)
                                        </div>
                                    @endforeach
                                </td>
                                <td>
                                    @include('view_table.text', ['value' => @$data->qty])
                                </td>
                                <td>
                                    @include('view_table.money', ['value' => @$data->price])
                                </td>
                                <td>
                                    @include('view_table.money', ['value' => @$data->total])
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <p class="text-center p2 border_eb font_bold color_red fs-16 text-uppercase">
                    Tổng tiền cần thanh toán: {{ number_format((int) $data_buying->total) }} vnđ
                </p>
            </div>
        @else
            <p class="fs-15 font-italic color_red">Chưa có dữ liệu {{ @$title }} !</p>
        @endif
    </div>
@endsection