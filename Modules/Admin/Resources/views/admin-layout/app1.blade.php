<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" href="{{asset('images/favicon.ico')}}" type="image/x-icon">

    <title>{{$projectname->value}} | @yield('title')</title>

    <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/font-icons.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/style-canvas.css')}}" type="text/css">
    @if($dir=='rtl')
        <link rel="stylesheet" href="{{asset('css/bootstrap-rtl.css')}}"  type="text/css">
        <link rel="stylesheet" href="{{asset('css/app-rtl.css')}}" >
    @else
        <link rel="stylesheet" href="{{asset('css/bootstrap.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/app.css')}}" type="text/css">
    @endif
    <link rel="stylesheet" href="{{asset('css/custom.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/animate.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/theme-g.css')}}" id="theme">
    @yield('styles')
    <style>
        body {
            font-family: "JF Flat Regular" !important;
        }

    </style>
    <script type="text/javascript" src="{{asset('js/jquery.js')}}"></script>
</head>
<body class="">
<div class="wrapper" style="position: absolute">
    {{--<div class="preloader">--}}
        {{--<div class="loader">--}}
            {{--<div class="loader__figure"></div>--}}
            {{--<p class="loader__label">Angle</p>--}}
        {{--</div>--}}
    {{--</div>--}}
    @include('admin::admin-layout.header')
    @yield('content')
    @include('admin::admin-layout.footer')
</div>
{{--@yield('modal')--}}
<!-- =============== VENDOR SCRIPTS ===============-->
{{--<script src="{{asset('js/modernizr.custom.js')}}"></script>--}}
{{--<script src="{{asset('js/matchMedia.js')}}"></script>--}}

<script>
    var language = {
        'ok': '@lang("app.sweet.ok")',
        'msg_delete': "@lang('app.sweet.msg_delete')",
        'cancel': "@lang('app.sweet.cancel')",
        'deleted': "@lang('app.sweet.deleted')",
        'deleted_file': "@lang('app.sweet.deleted_file')",
        'canceled': "@lang('app.sweet.canceled')",
        'canceled_file': "@lang('app.sweet.canceled_file')"
    };
    var accepted='{{trans('app.accepted')}}';
    var success = "@lang('app.success')";
    var pickimage = "@lang('app.pick_image')";
    var pickdoc = "@lang('app.pick_doc')";
    var pick = "@lang('app.pick')";
    var del = "@lang('app.delete')";
    var dir = "{{$dir}}";
    var DIR = "{{$dir}}";
    var of = "@lang('app.of')";
    var _csrf = '{{csrf_token()}}';
    var lang = '{{$lang}}';
    var LANG = '{{$lang}}';
    var right = '{{$right}}';
    var left = '{{$left}}';
    var baseUrl = '{{localizeURL('').'/'}}';
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': _csrf
        }
    });
</script>
<script type="text/javascript" src="{{asset('js/jquery.storageapi.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.nicescroll.js')}}"></script>
<script type="text/javascript" src="{{asset('js/notify.js')}}"></script>
<script type="text/javascript" src="{{asset ('js/plugins.js')}}"></script>
<script type="text/javascript" src="{{asset('js/functions.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery-request-types.js')}}"></script>
<script type="text/javascript" src="{{asset('js/app.js')}}"></script>
<script type="text/javascript" src="{{asset('js/sweet-alert-new.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/index.js')}}"></script>
@yield('scripts')

</body>
</html>
