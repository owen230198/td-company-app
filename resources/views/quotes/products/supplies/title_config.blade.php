<h3 class="fs-14 text-uppercase border_top_eb pt-3 mt-3 text-center quote_handle_title">
    <p class="mb-1">{{ $supp_index == 0 ? 'Phần vật tư '.@$name : 'Vật tư '.@$name.' thêm '.$supp_index }}</p>
    <p class="mb-1">Kích thước tấm {{ @$name }} là {{ $divide[0] }} x {{ $divide[1] }}cm</p>
</h3>