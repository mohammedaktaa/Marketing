<!DOCTYPE html>
<html class="wide wow-animation" lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="{{asset('images/favicon.ico')}}" type="image/x-icon">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Market|@yield('title')</title>
        <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}" type="text/css">
    @if($dir=='rtl')
        <link rel="stylesheet" href="{{asset('css/bootstrap-rtl.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/style-rtl.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/mdi-rtl.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/fl-bigmug-line-rtl.css')}}" type="text/css">
    @else
        <link rel="stylesheet" href="{{asset('css/bootstrap.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/style.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/mdi.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/fl-bigmug-line.css')}}" type="text/css">
    @endif

    @yield('styles')
    <style>
        body {
            font-family: "JF Flat Regular" !important;
        }
    </style>
</head>
<body class="">
<div class="page">
    @include('admin::layouts.header')
    @yield('content')
    @include('admin::layouts.footer')
</div>
<div id="gotoTop" class="icon-angle-up"></div>

<!-- Scripts -->
<script type="text/javascript" src="{{url('js/jquery.js')}}"></script>
<script type="text/javascript" src="{{url('vendor/datatable/js/jquery-request-types.js')}}"></script>
<script type="text/javascript" src="{{url('js/html5shiv.min.js')}}"></script>
<script type="text/javascript" src="{{url('js/core.min.js')}}"></script>
<script type="text/javascript" src="{{url('js/script.js')}}"></script>
@yield('scripts')


<script>
    var dir = "{{$dir}}";
    var _csrf = '{{csrf_token()}}';
    var lang = '{{$lang}}';
    var right = '{{$right}}';
    var left = '{{$left}}';
    var Days ="{{trans('app.day')}}";
    var Hours ="{{trans('app.hour')}}";
    var Minutes ="{{trans('app.minute')}}";
    var Seconds ="{{trans('app.second')}}";
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': _csrf
        }
    });
</script>

</body>
</html>
