@extends('layouts.app')
@section('title',isset($info['title_'.$lang]) ?$info['title_'.$lang]: 'title')
@section('content')
    <section class="breadcrumbs-custom breadcrumbs-custom-svg" style="background: {{$style->value=='pink'?'linear-gradient(-39deg, #b91354 10%, #BE2546 40%)':'linear-gradient(-39deg, rgba(114,4,228,0.39) 10%, rgba(96,27,191,0.79) 40%)'}}">
        <div class="shell">
            <p class="heading-1 breadcrumbs-custom-title">{{isset($info['title_'.$lang]) ?$info['title_'.$lang]: 'title'}}</p>
            <ul class="breadcrumbs-custom-path">
                <li class="white"><a href="{{route('home')}}">{{trans('app.home')}}</a></li>
                <li class="white"><a href="#">{{trans('app.pages')}}</a></li>
                <li class="active white"><a href="#">{{isset($info['title_'.$lang]) ?$info['title_'.$lang]: 'page'}}</a></li>
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
        <div class="shell shell-bigger text-center">
            <div class="range range-ten range-50 range-sm-center range-md-middle">
                <div class="cell-sm-9 cell-md-5 cell-lg-4">
                    @foreach($advantages as $advantage)
                        <div class="cell-sm-9 cell-md-4">
                            <div class="thumbnail-classic unit unit-sm-horizontal unit-md-vertical">
                                <div class="thumbnail-classic-icon unit-left"><span class="{{$advantage->icon}} fa-2x"></span>
                                </div>
                                <div class="thumbnail-classic-caption unit-body">
                                    <h6 class="thumbnail-classic-title">{{$advantage['title_'.$lang]}}</h6>
                                    <hr class="divider divider-default divider-sm"/>
                                    <p class="thumbnail-classic-text">{!! $advantage['content_'.$lang] !!}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endsection