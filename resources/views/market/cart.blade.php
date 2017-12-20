@extends('layouts.app')
@section('title')
    {{trans('title')}}
@endsection
@section('content')
    <section class="section section-lg bg-white">
        <!-- section wave-->
        <div class="section-wave">
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
                                <th>Product</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>
                                    <div class="unit unit-horizontal unit-middle">
                                        <div class="unit-left"><a href="product-page.html"><img src="images/book-01-54x71.jpg" alt="" width="54" height="71"/></a></div>
                                        <div class="unit-body"><a class="text-gray-darker" style="white-space: normal;" href="product-page.html">Immutable Laws of Marketing</a></div>
                                    </div>
                                </td>
                                <td>$29.00</td>
                                <td>
                                    <div class="form-wrap box-width-1 shop-input">
                                        <input class="form-input input-append" id="form-element-stepper-1" type="number" min="0" max="300" value="1">
                                    </div>
                                </td>
                                <td> <a class="icon mdi mdi-close icon-md-middle icon-gray-1" href="#"></a></td>
                            </tr>
                            </tbody>
                            <tr>
                                <td>2</td>
                                <td>
                                    <div class="unit unit-horizontal unit-middle">
                                        <div class="unit-left"><a href="product-page.html"><img src="images/book-02-54x71.jpg" alt="" width="54" height="71"/></a></div>
                                        <div class="unit-body"><a class="text-gray-darker" style="white-space: normal;" href="product-page.html">The Basics of Web Design</a></div>
                                    </div>
                                </td>
                                <td>$29.00</td>
                                <td>
                                    <div class="form-wrap box-width-1 shop-input">
                                        <input class="form-input input-append" id="form-element-stepper-2" type="number" min="0" max="300" value="1">
                                    </div>
                                </td>
                                <td><a class="icon mdi mdi-close icon-md-middle icon-gray-1" href="#"></a></td>
                            </tr>
                        </table>
                    </div>
                    <div class="range range-justify range-sm-middle text-center">
                        <div class="cell-sm-7 cell-lg-6 cell-xxl-5">
                            <!-- RD Mailform: Subscribe-->
                            <form class="rd-mailform rd-mailform-inline rd-mailform-sm rd-mailform-inline-modern" data-form-type="subscribe" method="post">
                                <div class="rd-mailform-inline-inner">
                                    <div class="form-wrap">
                                        <input class="form-input" type="text" name="text" data-constraints="@Required" id="subscribe-form-email-1">
                                        <label class="form-label" for="subscribe-form-email-1">Coupon Code</label>
                                    </div>
                                    <button class="button form-button button-sm button-secondary button-nina" type="submit">apply coupon</button>
                                </div>
                            </form>
                        </div>
                        <div class="cells-sm-5 cell-lg-6 cell-xl-5 text-sm-right">
                            <ul class="inline-list">
                                <li class="text-middle">
                                    <div class="heading-5 text-regular">$58.00</div>
                                </li>
                                <li class="text-middle"><a class="button button-secondary button-nina" href="checkout.html">checkout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection