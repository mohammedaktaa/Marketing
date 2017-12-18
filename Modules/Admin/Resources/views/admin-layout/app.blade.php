<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}" >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" href="{{asset('images/favicon.ico')}}" sizes="16x16">
    
	<title>iCare | @yield('title')</title>
	
    <link rel="stylesheet" href="{{asset('css/font-awesome.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/font-icons.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/theme-h.css')}}" id="theme">
    @if($dir=='rtl')
        <link rel="stylesheet" href="{{asset('css/bootstrap-rtl.css')}}" id="bscss" type="text/css">
        <link rel="stylesheet" href="{{asset('css/app-rtl.css')}}" id="maincss">
    @else
        <link rel="stylesheet" href="{{asset('css/bootstrap.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/app.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/style.css')}}" type="text/css">
    @endif
    <link rel="stylesheet" href="{{asset('css/custom.css')}}" type="text/css">
    @yield('styles')
    <style>
        body {
            font-family: "Source Sans Pro", "JF Flat Regular" !important;
        }

    </style>
</head>
<body class="">
<div class="wrapper">
    @include('admin::admin-layout.header')
    @yield('content')
    @include('admin::admin-layout.footer')
</div>
@yield('modal')
<!-- =============== VENDOR SCRIPTS ===============-->
{{--<script src="{{asset('js/modernizr.custom.js')}}"></script>--}}
{{--<script src="{{asset('js/matchMedia.js')}}"></script>--}}
<script type="text/javascript" src="{{asset('js/jquery.js')}}"></script>

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
    var success = "@lang('app.success')";
    var pickimage = "@lang('app.pick_image')";
    var pickdoc = "@lang('app.pick_doc')";
    var pick = "@lang('app.pick')";
    var del = "@lang('app.delete')";
    var dir = "{{$dir}}";
    var of = "@lang('app.of')";
    var _csrf = '{{csrf_token()}}';
    var lang = '{{$lang}}';
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
<script type="text/javascript" src="{{asset('js/app.js')}}"></script>
<script type="text/javascript" src="{{asset('js/index.js')}}"></script>
@yield('scripts')

<script>
    $('body').niceScroll({
        cursorcolor: "#FF2834",
        cursorwidth: "5px",
        zindex: 9999999,
        background: "rgba(20,20,20,0.7)",
        cursorborder: "1px solid #FF2834",
        cursorborderradius: 10
    });
</script>
</body>
</html>
