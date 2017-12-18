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
        <div class="shell shell-bigger">
            <div class="range range-ten range-50 range-sm-center range-lg-justify">
                <div class="cell-sm-9 cell-md-6">
                    <h3>{{trans('app.contact')}}</h3>
                    <hr class="divider divider-left divider-default">
                    <p class="big">{{'content'}}</p>
                    <!-- RD Mailform-->
                    <form class="rd-mailform" data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php">
                        <div class="range range-20">
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label class="form-label-outside" for="form-1-name">{{trans('app.f_name')}}</label>
                                    <input class="form-input" id="form-1-name" type="text" placeholder="{{trans('app.f_name')}}" name="first_name" data-constraints="@Required"/>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label class="form-label-outside" for="form-1-last-name">{{trans('app.l_name')}}</label>
                                    <input class="form-input" id="form-1-last-name" type="text" placeholder="{{trans('app.l_name')}}" name="last_name" data-constraints="@Required"/>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label class="form-label-outside" for="form-1-email">{{trans('app.email')}}</label>
                                    <input class="form-input" id="form-1-email" type="email" placeholder="{{trans('app.email')}}" name="email" data-constraints="@Email @Required"/>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label class="form-label-outside" for="form-1-phone">{{trans('app.phone')}}</label>
                                    <input class="form-input" id="form-1-phone" type="text" placeholder="{{trans('app.phone')}}" name="phone" data-constraints="@Numeric @Required"/>
                                </div>
                            </div>
                            <div class="cell-xs-12">
                                <div class="form-wrap form-wrap-validation">
                                    <label class="form-label-outside" for="form-1-message">{{trans('app.message')}}</label>
                                    <textarea class="form-input" id="form-1-message" placeholder="{{trans('app.message')}}" name="message" data-constraints="@Required"></textarea>
                                </div>
                            </div>
                            <div class="cell-xs-12 offset-custom-1">
                                <div class="form-button">
                                    <button class="button button-secondary" type="submit">{{trans('app.submit')}}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="cell-sm-9 cell-md-4 cell-lg-3">
                    <div class="column-aside">
                        <div class="range">
                            <div class="cell-xs-10 cell-sm-6 cell-md-12">
                                <h6>{{trans('app.address')}}</h6>
                                <hr class="divider-thin">
                                <article class="box-inline"><span class="icon icon-md-smaller icon-primary mdi mdi-map-marker"></span><span><a href="#">2130 Fulton Street, Chicago, IL <br class="veil reveal-lg-block"> 94117-1080 USA</a></span></article>
                            </div>
                            <div class="cell-xs-10 cell-sm-6 cell-md-12">
                                <h6>{{trans('app.phone')}}</h6>
                                <hr class="divider-thin">
                                <article class="box-inline"><span class="icon icon-md-smaller icon-primary mdi mdi-phone"></span>
                                    <ul class="list-comma">
                                        <li><a href="callto:">1-800-6543-765</a></li>
                                        <li><a href="callto:">1-800-3434-876</a></li>
                                    </ul>
                                </article>
                            </div>
                            <div class="cell-xs-10 cell-sm-6 cell-md-12">
                                <h6>{{trans('app.email')}} </h6>
                                <hr class="divider-thin">
                                <article class="box-inline"><span class="icon icon-md-smaller icon-primary mdi mdi-email-open"></span><span><a href="mailto:">mail@demolink.org</a></span></article>
                            </div>
                            {{--<div class="cell-xs-10 cell-sm-6 cell-md-12">--}}
                                {{--<h6>{{trans('app.opening_hours')}}</h6>--}}
                                {{--<hr class="divider-thin">--}}
                                {{--<article class="box-inline"><span class="icon icon-md-smaller icon-primary mdi mdi-calendar-clock"></span>--}}
                                    {{--<ul class="list-0">--}}
                                        {{--<li>Mon–Fri: 9:00 am–6:00 pm</li>--}}
                                        {{--<li>Sat–Sun: 11:00 am–4:00 pm</li>--}}
                                    {{--</ul>--}}
                                {{--</article>--}}
                            {{--</div>--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection