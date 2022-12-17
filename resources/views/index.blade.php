<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{{ @$title ? $title : 'Management' }}</title>
    <base href="{{ url('') }}">
    <link rel="icon" type="image/x-icon" href="{{ asset('frontend/admin/images/logo.png') }}">
    <link rel="stylesheet" href="{{ asset('frontend/base/css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/base/css/font-awesome.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/base/css/select2.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/base/css/toastr.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/base/daterangepickers/daterangepicker.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/admin/css/users.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/admin/css/header.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/base/css/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/admin/css/style.css') }}" />
    @yield('css')
</head>

<body>
    @if (@$nosidebar)
        @yield('content')
    @else
        @php
            $user_login = session('user_login');
            $menu = $user_login['menu'];
            $parent_menu = $user_login['parent_menu'];
        @endphp
        @include('header')
        @include('sidebar')
        <section class="main-all">
            <div class="reponsive container-fluid">
                <div class="station-richmenu-main" id="set-width">
                    <div class="station-richmenu-main-area justify-content-between">
                        <div class="station-richmenu-main-area--item d-flex align-items-center">
                            <button type="button" class="station-richmenu-main__btn" id="open">
                                <img src="{{ asset('frontend/admin/images/station-user-btn-01.png') }}" alt="" />
                            </button>
                            <button type="button" class="station-richmenu-main__btn" id="close">
                                <img src="{{ asset('frontend/admin/images/station-user-btn-02.png') }}" alt="" />
                            </button>
                            <h1 class="station-richmenu-main__ttl text-capitalize">{{ $title ?? '' }}</h1>
                        </div>
                    </div>
                    <div class="dash_board_content my-3 py-3 border_top">
                        @yield('content')
                    </div>
                </div>
            </div>
        </section>
    @endif
    <script src="{{ asset('frontend/base/script/jquery.min.js') }}"></script>
    <script src="{{ asset('frontend/base/script/bootstrap.min.js') }}"></script>
    <script src="{{ asset('frontend/base/script/toastr.min.js') }}"></script>
    <script src="{{ asset('frontend/admin/tinymce/js/tinymce/tinymce.min.js') }}"></script>
    <script src="{{ asset('frontend/admin/tinymce/js/tinymce/init_tinymce.js') }}"></script>
    <script src="{{ asset('frontend/base/script/select2.min.js') }}"></script>
    <script src="{{ asset('frontend/base/daterangepickers/moment.min.js') }}"></script>
    <script src="{{ asset('frontend/base/daterangepickers/daterangepicker.js') }}"></script>
    <script src="{{ asset('frontend/admin/script/loading.js') }}"></script>
    <script src="{{ asset('frontend/admin/script/theme.js') }}"></script>
    <script src="{{ asset('frontend/base/script/script.js') }}"></script>
    <script src="{{ asset('frontend/admin/script/script.js') }}"></script>
    @yield('script')
    <script>
        @if (Session::has('message'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.success("{{ session('message') }}");
        @endif

        @if (Session::has('error'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.error("{{ session('error') }}");
        @endif

        @if (Session::has('info'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.info("{{ session('info') }}");
        @endif

        @if (Session::has('warning'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.warning("{{ session('warning') }}");
        @endif
    </script>
</body>

</html>
