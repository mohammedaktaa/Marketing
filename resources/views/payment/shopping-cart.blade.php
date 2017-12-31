@extends('layouts.app')
@section('title',trans('app.shopping_cart'))
@section('content')
    <section class="breadcrumbs-custom breadcrumbs-custom-svg" style="background: {{$style->value=='pink'?'linear-gradient(-39deg, #b91354 10%, #BE2546 40%)':'linear-gradient(-39deg, rgba(114,4,228,0.39) 10%, rgba(96,27,191,0.79) 40%)'}}">
        <div class="shell">
            <p class="heading-1 breadcrumbs-custom-title">{{trans('app.shopping_cart')}}</p>
            <ul class="breadcrumbs-custom-path">
                <li class="white"><a href="{{route('home')}}">{{trans('app.home')}}</a></li>
                <li class="active white"><a href="#">{{trans('app.shopping_cart')}}</a></li>
            </ul>
        </div>
        <div class="parallax-scene-js parallax-scene" data-scalar-x="5" data-scalar-y="10">
            <div class="layer-01">
                <div class="layer" data-depth="0.25"><img src="{{asset('images/parallax-scene-01-132x133.png')}}" alt="" width="132" height="133"/>
                </div>
            </div>
            <div class="layer-02">
                <div class="layer" data-depth=".55"><img src="{{asset('images/parallax-scene-02-186x208.png')}}" alt="" width="186" height="208"/>
                </div>
            </div>
            <div class="layer-03">
                <div class="layer" data-depth="0.1"><img src="{{asset('images/parallax-scene-03-108x120.png')}}" alt="" width="108" height="120"/>
                </div>
            </div>
            <div class="layer-04">
                <div class="layer" data-depth="0.25"><img src="{{asset('images/parallax-scene-04-124x145.png')}}" alt="" width="124" height="145"/>
                </div>
            </div>
            <div class="layer-05">
                <div class="layer" data-depth="0.15"><img src="{{asset('images/parallax-scene-05-100x101.png')}}" alt="" width="100" height="101"/>
                </div>
            </div>
            <div class="layer-06">
                <div class="layer" data-depth="0.65"><img src="{{asset('images/parallax-scene-06-240x243.png')}}" alt="" width="240" height="243"/>
                </div>
            </div>
        </div>
    </section>
    <section class="section section-lg bg-white">
        <!-- section wave-->
        <div class="section-wave" style="z-index: 999;">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-wide">
            <div class="range range-md-center">
                <div class="cell-lg-11 cell-xl-8">
                    <div class="table-novi table-custom-responsive table-shop-responsive">
                        <table class="table-custom table-shop">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>{{trans('app.products')}}</th>
                                <th>{{trans('app.price')}}</th>
                                <th>{{trans('app.quantity')}}</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody class="tbody">
                            @foreach($content as $item)
                                <tr>
                                    <td>{{$item->id }}</td>
                                    <td>
                                        <div class="unit unit-horizontal unit-middle">
                                            <div class="unit-body"><a class="text-gray-darker"
                                                                      style="white-space: normal;"
                                                                      href="#">{{$item->name}}</a></div>
                                        </div>
                                    </td>
                                    <td>{{$item->price}}</td>
                                    <td style="text-align: center">{{$item->qty}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="range range-justify range-sm-middle text-center">
                        <div class="cell-sm-7 cell-lg-6 cell-xxl-5">
                            <!-- RD Mailform: Subscribe-->
                            <form class="rd-mailform rd-mailform-inline rd-mailform-sm rd-mailform-inline-modern"
                                  method="GET" action="{{localizeURL('apply-coupon')}}" enctype="multipart/form-data">
                                {{csrf_field()}}
                                <div class="rd-mailform-inline-inner">
                                    <div class="form-wrap">
                                        <input class="form-input" type="text" name="code" placeholder="{{trans('app.coupon_code')}}"
                                               id="subscribe-form-code">
                                        <label class="form-label"
                                               for="subscribe-form-code">{{trans('app.coupon_code')}}</label>
                                    </div>
                                    <button class="button form-button button-sm button-secondary button-nina apply_co"
                                            type="submit">{{trans('app.apply_coupon')}}</button>
                                </div>
                            </form>
                        </div>
                        <div class="cells-sm-5 cell-lg-6 cell-xl-5 text-sm-right">
                            <ul class="inline-list">
                                <li class="text-middle">
                                    <div class="heading-5 text-regular sum">{{$sum}}</div>
                                </li>
                                <li class="text-middle"><a class="button button-secondary button-nina local_pay"
                                                           href="{{localizeURL('pay-local')}}">{{trans('app.checkout')}}</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        $(function () {
            $('.local_pay').click(function (e) {
                e.preventDefault();
                var url = $(this).attr('href') + '/' + $('.sum').text();
                $.ajax({
                    type: 'GET',
                    url: url,
                    success: function (data) {
                        if (data.success === 'success') {
                            swal({
                                title: data.msg,
                                type: data.type,
                                confirmButtonColor: "#4CDC80",
                                confirmButtonText: okay
                            });
                            $('#money').text(data.money);
                            $('.sum').text('0');
                            $('.tbody').text('');
                            $('#cart-count').text(data.count);
                        } else {
                            swal({
                                title: data.msg,
                                type: 'error',
                                confirmButtonColor: "#FF3D4A",
                                confirmButtonText: okay
                            });
                            $('#money').text(data.money);
                        }
                    }
                })
            });
            $('form').on('submit', function (e) {
                e.preventDefault();
                var url = $(this).attr('action')+'/'+$('.sum').text();
                var form = $(this).serialize();
                $.ajax({
                    type: 'Get',
                    url:url,
                    data: form,
                    success: function (data) {
                        $(this).attr('disabled','disabled');
                        if (data.success === 'success') {
                            swal({
                                title: data.msg,
                                type: data.type,
                                confirmButtonColor: "#4CDC80",
                                confirmButtonText: okay
                            });
                            $('.sum').text(data.sum);
                            $('#subscribe-form-code').val('');
                        } else {
                            swal({
                                title: data.msg,
                                type: data.type,
                                confirmButtonColor: "#FF3D4A",
                                confirmButtonText: okay
                            });
                            $('.sum').text(data.sum);
                        }
                    }
                });
            });
        });
    </script>
@endsection