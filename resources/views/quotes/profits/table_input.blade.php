<h3 class="fs-14 text-uppercase border_top_eb pt-3 mt-3 handle_title">II. Chi phí vận chuyển & lợi nhuận sản phẩm</h3>
<table class="table table-bordered mb-1 quote_table_profit my-4">
    <thead class="font_bold">
        <tr>
            <th class="text-center">Mã báo giá</th>
            <th>Chi phí vận chuyển</th>
            <th>Lợi nhuận %</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="text-center align-middle font_bold color_green">{{ $data_quote->seri }}</td>
            <td class="align-middle">
                <div class="form-group d-flex align-items-center justify-content-center mb-0">
                    <input type="number" step="any" class="form-control" name="ship_price" value="{{ @$data_quote->ship_price }}" placeholder="Nhập chi phí vận chuyển (VNĐ)">
                </div>
            </td>
            <td class="align-middle">
                <div class="form-group d-flex align-items-center justify-content-center mb-0">
                    <input type="number" step="any" class="form-control" name="profit" value="{{ @$data_quote->profit }}" placeholder="Nhập lợi nhuận sản phẩm (%)">
                </div>
            </td>
        </tr>
    </tbody>
</table>