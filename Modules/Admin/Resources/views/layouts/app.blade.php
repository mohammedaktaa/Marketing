<!DOCTYPE html>
<html class="wide wow-animation" dir="{{$dir}}" lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="{{asset('images/favicon.ico')}}" type="image/x-icon">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Market | @yield('title')</title>
        <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/font-icons.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/style-canvas.css')}}" type="text/css">
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
        <link rel="stylesheet" href="{{asset('css/custom.css')}}" type="text/css">

    @yield('styles')
    <style>
        body {
            font-family: "JF Flat Regular" !important;
        }
        .page-loader .page-loader-body:before {
            content: '{{$loader->text}}' !important; ;
        }
    </style>
<script type="text/javascript" src="{{url('js/jquery.js')}}"></script>
</head>
<body class="">
<div class="page">
    {{--<div class="page-loader">--}}
        {{--<div class="page-loader-body">--}}

            {{--<div class="preloader-wrapper big active">--}}
                {{--<div class="spinner-layer spinner-blue">--}}
                    {{--<div class="circle-clipper left">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                    {{--<div class="gap-patch">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                    {{--<div class="circle-clipper right">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="spinner-layer spinner-red">--}}
                    {{--<div class="circle-clipper left">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                    {{--<div class="gap-patch">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                    {{--<div class="circle-clipper right">--}}
                        {{--<div class="circle"> </div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="spinner-layer spinner-yellow">--}}
                    {{--<div class="circle-clipper left">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                    {{--<div class="gap-patch">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                    {{--<div class="circle-clipper right">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="spinner-layer spinner-green">--}}
                    {{--<div class="circle-clipper left">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                    {{--<div class="gap-patch">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                    {{--<div class="circle-clipper right">--}}
                        {{--<div class="circle"></div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</div>--}}
    @include('admin::layouts.header')
    @yield('content')
    @include('admin::layouts.footer')
</div>
<div id="gotoTop" class="icon-angle-up"></div>

<!-- Scripts -->
<script>
    var dir = "{{$dir}}";
    var DIR = "{{$dir}}";
    var _csrf = '{{csrf_token()}}';
    var lang = '{{$lang}}';
    var LANG = '{{$lang}}';
    var right = '{{$right}}';
    var left = '{{$left}}';
    var baseUrl='{{localizeURL('').'/'}}';
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
<script type="text/javascript" src="{{url('vendor/datatable/js/jquery-request-types.js')}}"></script>
{{--<script type="text/javascript" src="{{url('js/html5shiv.min.js')}}"></script>--}}
<script type="text/javascript" src="{{url('js/notify.js')}}"></script>
<script type="text/javascript" src="{{url('js/functions.js')}}"></script>
<script type="text/javascript" src="{{url('js/plugins.js')}}"></script>
{{--<script type="text/javascript" src="{{url('js/jquery.nicescroll.js')}}"></script>--}}
@yield('scripts')
{{--<script type="text/javascript" src="{{url('js/core.min.js')}}"></script>--}}
{{--<script type="text/javascript" src="{{url('js/script.js')}}"></script>--}}
<script type="text/javascript" src="{{url('js/index.js')}}"></script>

</body>
</html>
