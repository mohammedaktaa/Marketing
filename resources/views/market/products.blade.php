@extends('layouts.app')
@section('title',trans('app.products'))
@section('content')
    <section class="section section-lg bg-gray-lighter text-center">
        <!-- section wave-->
        <div class="section-wave">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-wide">
            <h3>{{trans('app.product_catalog')}}</h3>
            <div class="divider divider-default"></div>
            <div class="range range-sm range-shop">
                <div class="cell-lg-9">
                    <div class="range range-70 text-left">
                        @foreach($produtess as $product)
                            <div class="cell-sm-6 cell-md-4">
                                <figure class="block-with-details book-info">
                                    <div class="perspective">
                                        <div class="book" data-book="book-4">
                                            <div class="cover">
                                                <div class="front"></div>
                                                <div class="inner inner-left"></div>
                                            </div>
                                            <div class="inner inner-right"></div>
                                        </div>
                                    </div>
                                    <div class="figcaption">
                                        <h5 class="book-title"><a
                                                    href="#">{{$product['name_'.$lang]}}</a></h5>
                                        <div class="book-price">
                                            <div class="heading-6">{{$product->price}}$</div>
                                        </div>
                                        <div class="book-button"><a
                                                    class="button button-sm button-secondary button-nina add_cart"
                                                    href="{{localizeURL('add-cart/'.$product->product_id.'/Product')}}">{{trans('app.add_to_cart')}}</a>
                                        </div>
                                        <div class="book-button"><a
                                                    class="button button-sm button-secondary button-nina"
                                                    href="{{localizeURL('pay/product/'.$product->product_id)}}"><em
                                                        class="fa fa-paypal"></em>{{trans('app.pay_now')}}</a>
                                        </div>
                                        <div class="book-button"><a
                                                    class="button button-sm button-secondary button-nina local_pay"
                                                    href="{{localizeURL('pay-local/product/'.$product->product_id)}}"><em
                                                        class="fa fa-credit-card"></em>{{trans('app.pay_now')}}</a>
                                        </div>
                                        {{--<div class="show-details"><a--}}
                                        {{--href="{{localizeURL('products/'.$product->product_id)}}">{{trans('app.view_details')}}</a>--}}
                                        {{--</div>--}}
                                    </div>
                                    <div class="details">
                                        <ul>
                                            <li>
                                                <h5></h5>
                                                <p class="book-cite">{{$product['name_'.$lang]}}</p>
                                                <p class="book-tag"><a
                                                            href="#">{{$product->category['name_'.$lang]}}</a>
                                                </p>
                                                <p class="book-content">{{$product['description_'.$lang]}}</p>
                                            </li>
                                        </ul>
                                </figure>
                            </div>
                        @endforeach
                    </div>
                    {{--<ul class="pagination-custom">--}}
                    <li>{{$produtess->links()}}</li>
                    {{--</ul>--}}
                </div>
                <!-- Shop Sidebar-->
                <div class="cell-lg-3 shop-aside text-left">
                    <div class="shop-aside-item">
                        <h6>{{trans('app.categories')}}</h6>
                        <ul class="list-marked list-marked-secondary" style="color: ">
                            @foreach($categories as $category)
                                <li><a href="#">{{$category['name_'.$lang]}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        @if( isset($success) && $success=='success')
        $(function () {
            swal({
                title: success_payed,
                type: "success",
                confirmButtonColor: "#4CDC80",
                confirmButtonText: okay
            });
        });
        @endif
        $(function () {
            $('.add_cart').click(function (e) {
                e.preventDefault();
                var url = $(this).attr('href');
                $.ajax({
                    type: 'GET',
                    url: url,
                    success: function (data) {
                        $('#cart-count').text(data.count);
                    }
                })
            });
            $('.local_pay').click(function (e) {
                e.preventDefault();
                var url = $(this).attr('href');
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
                        }else {
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
            })
        })
    </script>
@endsection