<!DOCTYPE html>
<html class="wide wow-animation" dir="{{$dir}}" lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="{{asset('images/favicon.ico')}}" type="image/x-icon">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{$projectname->value}} | @yield('title')</title>
        <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/font-icons.css')}}" type="text/css">
    @if($dir=='rtl')
        <link rel="stylesheet" href="{{asset('css/bootstrap-rtl.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/'.$style->value.'-rtl.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/mdi-rtl.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/fl-bigmug-line-rtl.css')}}" type="text/css">
    @else
        <link rel="stylesheet" href="{{asset('css/bootstrap.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/'.$style->value.'.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/mdi.css')}}" type="text/css">
        <link rel="stylesheet" href="{{asset('css/fl-bigmug-line.css')}}" type="text/css">
    @endif
        <link rel="stylesheet" href="{{asset('css/sweetalert.css')}}" type="text/css">

    @yield('styles')
    <style>
        .page-loader .page-loader-body:before {
            content: '{{$loader->value}}' !important; ;
            font-family: mess;
        }
        @font-face {
            font-family: "messeri";
            src: url('../../../public/css/fonts/ElMessiri-SemiBold.ttf');
        }
        @font-face {
            font-family: "baloo";
            src: url('../../../public/css/fonts/Baloo-Regular.ttf');
        }
        @if($dir=='rtl')
        * {
            font-family: "messeri";
        }
        body {
            font-family: "messeri";
        }
        @endif
    </style>
</head>
<body class="">
<div class="page" style="">
    <div class="page-loader">
        <div class="page-loader-body">

            <div class="preloader-wrapper big active">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"> </div>
                    </div>
                </div>
                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-green">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('layouts.header')
    @yield('content')
    {{--<div id="paypal-button"></div>--}}
    @include('layouts.footer')
</div>
<div id="gotoTop" class="icon-angle-up"></div>

<!-- Scripts -->
<script type="text/javascript" src="{{url('js/jquery-1-2.js')}}"></script>

<script>
    var language = {
        'ok': '@lang("app.sweet.ok")',
        'cancel': "@lang('app.sweet.cancel')",
    };
    var success_payed='{{trans('app.success_payed')}}';
    var accept='{{trans('app.accept')}}';
    var account='{{trans('app.account')}}';
    var okay='{{trans('app.sweet.ok')}}';
    var style='{{$style->value}}';
    var pickimage = "@lang('app.pick_image')";
    var pickdoc = "@lang('app.pick_doc')";
    var pick = "@lang('app.pick')";
    var del = "@lang('app.delete')";
    var dir = "{{$dir}}";
    var DIR = "{{$dir}}";
    var of = "@lang('app.of')";
    var _csrf = '{{csrf_token()}}';
    var lang = '{{$lang}}';
    var right = '{{$right}}';
    var left = '{{$left}}';
    var Days ="{{trans('app.day')}}";
    var Hours ="{{trans('app.hour')}}";
    var Minutes ="{{trans('app.minute')}}";
    var Seconds ="{{trans('app.second')}}";
    var baseUrl = '{{localizeURL('').'/'}}';
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': _csrf
        }
    });
</script>
{{--<script type="text/javascript" src="{{url('js/html5shiv.min.js')}}"></script>--}}
<script type="text/javascript" src="{{url('js/core.min.js')}}"></script>
<script type="text/javascript" src="{{url('js/jquery.nicescroll.js')}}"></script>
<script type="text/javascript" src="{{url('js/script.js')}}"></script>
<script type="text/javascript" src="{{url('js/sweetalert.min.js')}}"></script>
{{--<script src="https://www.paypalobjects.com/api/checkout.js"></script>--}}
<script type="text/javascript" src="{{asset('js/Chart.bundle.min.js')}}"></script>
@yield('scripts')
<script type="text/javascript" src="{{url('js/index.js')}}"></script>
{{--<script>--}}
    {{--paypal.Button.render({--}}
        {{--env: 'production', // Or 'sandbox',--}}

        {{--commit: true, // Show a 'Pay Now' button--}}

        {{--style: {--}}
            {{--color: 'gold',--}}
            {{--size: 'small'--}}
        {{--},--}}

        {{--payment: function(data, actions) {--}}
            {{--/*--}}
             {{--* Set up the payment here--}}
             {{--*/--}}
        {{--},--}}

        {{--onAuthorize: function(data, actions) {--}}
            {{--/*--}}
             {{--* Execute the payment here--}}
             {{--*/--}}
        {{--},--}}

        {{--onCancel: function(data, actions) {--}}
            {{--/*--}}
             {{--* Buyer cancelled the payment--}}
             {{--*/--}}
        {{--},--}}

        {{--onError: function(err) {--}}
            {{--/*--}}
             {{--* An error occurred during the transaction--}}
             {{--*/--}}
        {{--}--}}
    {{--}, '#paypal-button');--}}
{{--</script>--}}
</body>
</html>
