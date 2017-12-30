@extends('layouts.app')
@section('title',$teams['name_'.$lang])
@section('content')
    <section class="breadcrumbs-custom breadcrumbs-custom-svg" style="background: {{$style->value=='pink'?'linear-gradient(-39deg, #b91354 10%, #BE2546 40%)':'linear-gradient(-39deg, rgba(114,4,228,0.39) 10%, rgba(96,27,191,0.79) 40%)'}}">
        <div class="shell">
            <p class="heading-1 breadcrumbs-custom-title">{{trans('app.team')}}</p>
            <ul class="breadcrumbs-custom-path">
                <li><a href="{{route('home')}}">{{trans('app.home')}}</a></li>
                <li><a href="#">{{trans('app.team')}}</a></li>
                <li class="active"><a href="#">{{$teams['name_'.$lang]}}</a></li>
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
    <section class="section section-lg bg-white text-left">
        <!-- section wave-->
        <div class="section-wave" style="z-index: 999;">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-bigger">
            <div class="range range-ten range-lg-justify">
                <div class="cell-lg-3">
                    <div class="range range-70 range-sm-middle">
                        <div class="cell-sm-6 cell-lg-12"><img src="{{asset(\App\Models\Team::IMAGE_File_PATH.$teams->image)}}" alt="" width="420" height="420"/>
                        </div>
                    </div>
                </div>
                <div class="cell-lg-6">
                    <div class="range range-120">
                        <div class="cell-xs-12">
                            <div class="heading-5">{{$teams['job_title_'.$lang]}}</div>
                            <h3>{{$teams['name_'.$lang]}}</h3>
                            <div class="divider divider-default"></div>
                            {{--<p class="text-spacing-sm">Ronald is one of the main person behind Brave. He is the multitalented marketer and a former lead strategist who is a true mine of creative ideas for everyone at our team.</p>--}}
                            <div class="range text-center range-md range-30 range-xxs-center">
                                <div class="cell-xxs-6 cell-xs-4">
                                    <div class="progress-bar-circle" data-value="0.75" data-gradient="#ed1c94, #ed1c94" data-empty-fill="rgb(242,243,249)" data-size="140" data-thickness="6"><span class="radial">5</span></div>
                                    <div class="heading-5">Marketing</div>
                                </div>
                                <div class="cell-xxs-6 cell-xs-4">
                                    <div class="progress-bar-circle" data-value="0.50" data-gradient="#ed1c94, #ed1c94" data-empty-fill="rgb(242,243,249)" data-size="140" data-thickness="6"><span class="radial">5</span></div>
                                    <div class="heading-5">Strategy</div>
                                </div>
                                <div class="cell-xxs-6 cell-xs-4">
                                    <div class="progress-bar-circle" data-value="0.25" data-gradient="#ed1c94, #ed1c94" data-empty-fill="rgb(242,243,249)" data-size="140" data-thickness="6"><span class="radial">5</span></div>
                                    <div class="heading-5">Design</div>
                                </div>
                            </div>
                        </div>
                        {{--<div class="cell-xs-12">--}}
                            {{--<div class="range range-70">--}}
                                {{--<div class="cell-sm-6">--}}
                                    {{--<h6>skills</h6>--}}
                                    {{--<p>Marketing, advertising, sales, management,<br class="veil reveal-xl-block"> strategy, communication, coaching, PR--}}
                                    {{--</p>--}}
                                {{--</div>--}}
                                {{--<div class="cell-sm-6">--}}
                                    {{--<h6>awards</h6>--}}
                                    {{--<ul class="list list-xxs text-spacing-sm">--}}
                                        {{--<li>2017 — The Best Marketer</li>--}}
                                        {{--<li>2016 — The Best Employer of the Year</li>--}}
                                        {{--<li>2015 — The Best PR Expert</li>--}}
                                    {{--</ul>--}}
                                {{--</div>--}}
                                {{--<div class="cell-sm-6">--}}
                                    {{--<h6>certificates</h6>--}}
                                    {{--<ul class="list list-xxs text-spacing-sm">--}}
                                        {{--<li>2017 — New Ways of Sales</li>--}}
                                        {{--<li>2016 — Modern Methods of Promotion</li>--}}
                                        {{--<li>2015 — Public Relations in Business</li>--}}
                                    {{--</ul>--}}
                                {{--</div>--}}
                                {{--<div class="cell-sm-6">--}}
                                    {{--<h6>contact information</h6>--}}
                                    {{--<ul class="list-xs">--}}
                                        {{--<li class="box-inline box-inline-gray"><span class="icon icon-md-smaller icon-primary mdi mdi-map-marker"></span>--}}
                                            {{--<div><a href="#">2130 Fulton Street, San Diego, CA<br>94117-1080 USA</a></div>--}}
                                        {{--</li>--}}
                                        {{--<li class="box-inline box-inline-gray"><span class="icon icon-md-smaller icon-primary mdi mdi-phone"></span>--}}
                                            {{--<ul class="list-comma">--}}
                                                {{--<li><a href="callto:#">1-800-1234-567</a></li>--}}
                                            {{--</ul>--}}
                                        {{--</li>--}}
                                        {{--<li>--}}
                                            {{--<ul class="inline-list-xs">--}}
                                                {{--<li><a class="icon icon-sm-bigger icon-gray-1 mdi mdi-facebook" href="#"></a></li>--}}
                                                {{--<li><a class="icon icon-sm-bigger icon-gray-1 mdi mdi-twitter" href="#"></a></li>--}}
                                                {{--<li><a class="icon icon-sm-bigger icon-gray-1 mdi mdi-instagram" href="#"></a></li>--}}
                                                {{--<li><a class="icon icon-sm-bigger icon-gray-1 mdi mdi-google" href="#"></a></li>--}}
                                                {{--<li><a class="icon icon-sm-bigger icon-gray-1 mdi mdi-linkedin" href="#"></a></li>--}}
                                            {{--</ul>--}}
                                        {{--</li>--}}
                                    {{--</ul>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection