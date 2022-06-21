<div class="siderbar admin_sidebar" id="set-width-sd">
  <ul class="siderbar-menu">
    <li class="siderbar-menu__list text-capitalize parent_li">
      <a href="{{url('')}}" class="siderbar-menu__lnk">
        <span class="siderbar-menu__bg">
          <i class="icon_menu fa fa-home fs-17" aria-hidden="true"></i>
        </span>
        <span class="sider-bar_name">Trang chủ</span>
      </a>
    </li>
    @foreach ($parent_menu as $item)
      <li class="siderbar-menu__list text-capitalize parent_li">
        <a href="{{ $item['link'] }}" class="siderbar-menu__lnk">
          <span class="siderbar-menu__bg">
            <i class="icon_menu fa fa-{{ $item['icon'] }} fs-17" aria-hidden="true"></i>
          </span>
          <span class="sider-bar_name">{{ $item['note'] }}</span>
          <i class="fa fa-angle-right menu_click fs-17 color_white menu_item_btn" aria-hidden="true"></i>
        </a>
        <ul class="siderbar_child">
          @foreach ($menu as $child)
            @if(@$child['parent'] && $child['parent']==$item['_id'])
              <li>
                <a href="{{ asset($child['link']) }}">{{ $child['note'] }}</a>
              </li>
            @endif 
          @endforeach
        </ul>
      </li> 
    @endforeach
  </ul>
</div>