@extends('layouts.app')
@section('title',trans('app.careers'))
@section('content')
    <section class="section section-lg bg-white">
        <!-- section wave-->
        <div class="section-wave">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-bigger">
            <div class="range range-ten range-50 range-sm-center range-md-middle range-lg-justify range-md-reverse">
                <div class="cell-sm-9 cell-md-5 cell-lg-4">
                    <h3>{{trans('app.talent')}}</h3>
                    <div class="divider divider-default"></div>
                    <p class="heading-5">The team of Brave creates award-winning websites and web templates for top brands in various industries including education, healthcare, technology, and travel.</p>
                    <p class="text-spacing-sm">If you're a multi-disciplined expert at your craft who loves figuring out new ways to do things, talking tech, playing chess, beer Fridays, and an overflowing snack cabinet, let's talk. We offer all the stuff you'd expect, and plenty of other really generous perks.</p>
                </div>
                <div class="cell-sm-9 cell-md-5"><img src="{{asset('images/about-us-1-720x459.jpg')}}" alt="" width="720" height="459"/>
                </div>
            </div>
        </div>
    </section>

    <!-- Small Features-->
    <section class="section section-lg text-center text-sm-left bg-gray-lighter">
        <div class="shell-wide">
            <div class="range range-50 range-xs-center text-gray-light">
                <div class="cell-xs-10 cell-sm-4">
                    <div class="box-accent">
                        <h6>{{trans('app.corporate_culture')}}</h6>
                        <p>{{trans('app.corp_desc')}}</p>
                    </div>
                </div>
                <div class="cell-xs-10 cell-sm-4">
                    <div class="box-accent">
                        <h6>{{trans('app.benefits')}}</h6>
                        <p>{{trans('app.ben_desc')}}</p>
                    </div>
                </div>
                <div class="cell-xs-10 cell-sm-4">
                    <div class="box-accent">
                        <h6>{{trans('app.learning')}}</h6>
                        <p>{{trans('app.learn_desc')}}</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Current Opennings-->
    <section class="section section-lg bg-white text-center">
        <div class="shell shell-wide">
            <h3>{{trans('app.curr_opening')}}</h3>
            <div class="divider divider-default"></div>
            <div class="range range-30 range-center text-left">
                @foreach($careers as $career)
                <div class="cell-lg-3 cell-sm-6 cell-md-4">
                    <div class="box-info">
                        <div class="box-info-inner">
                            <h6 class="box-info-title"><a href="{{localizeURL('career/'.$career->id)}}">{{$career['title_'.$lang]}}</a></h6>
                            <p>{!! $career['content_'.$lang] !!}</p>
                        </div>
                        <div class="box-info-footer">
                            <ul class="list-inline-md">
                                <li class="box-inline"><span class="icon mdi-calendar-clock icon-primary mdi"></span><span>{{trans('app.'.$career->type)}}</span></li>
                                <li class="box-inline"><span class="icon icon-primary mdi mdi-map-marker"></span><span>{{$career->city['name_'.$lang]}}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                    @endforeach
            </div>
        </div>
    </section>
@endsection