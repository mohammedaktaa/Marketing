@extends('layouts.app')
@section('title',trans('app.courses'))
@section('content')
    <section class="breadcrumbs-custom breadcrumbs-custom-svg" style="background: {{$style->value=='pink'?'linear-gradient(-39deg, #b91354 10%, #BE2546 40%)':'linear-gradient(-39deg, rgba(114,4,228,0.39) 10%, rgba(96,27,191,0.79) 40%)'}}">
        <div class="shell">
            <p class="heading-1 breadcrumbs-custom-title">{{trans('app.courses')}}</p>
            <ul class="breadcrumbs-custom-path">
                <li><a href="{{route('home')}}">{{trans('app.home')}}</a></li>
                <li><a href="#">{{trans('app.courses')}}</a></li>
                <li class="active">{{trans('app.modern_courses')}}</li>
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
    <section class="section section-xl bg-gray-lighter">
        <!-- section wave-->
        <div class="section-wave" style="z-index: 999;">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-bigger">
            <div class="range range-ten range-50 range-sm-90 range-sm-center range-lg-justify">
                <div class="cell-sm-9 cell-md-7 cell-lg-6 text-center">
                    <div class="range range-30">
                        @foreach($course as $cours)
                            <div class="cell-sm-6">
                            <article class="post-blog"><a class="post-blog-image" href="#"><img src="{{$cours->image?asset(\App\Models\Course::IMAGE_File_PATH.$cours->image):asset('images/blog.jpg')}}" alt="" width="420" height="305"/></a>
                                <div class="post-blog-caption">
                                    <div class="post-blog-caption-header">
                                        {{--<ul class="post-blog-tags">--}}
                                            {{--<li><a class="button-tags" href="single-post.html">business</a></li>--}}
                                        {{--</ul>--}}
                                        <ul class="post-blog-meta">
                                            <li><span>by</span>&nbsp;<a href="{{localizeURL("courses/$cours->course_id")}}">{{$cours['title_'.$lang]}}</a></li>
                                        </ul>
                                    </div>
                                    <div class="post-blog-caption-body">
                                        <h5><a class="post-blog-title" href="#">{{$cours->place}}</a></h5>
                                    </div>
                                    <div class="post-blog-caption-footer">
                                        <time datetime="2017">{{$cours->date}} {{trans('app.at')}} {{$cours->time}} </time><a class="post-comment" href="single-post.html"><span class="icon icon-md-middle icon-gray-1 mdi mdi-comment"></span><span>3</span></a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        @endforeach
                    </div>
                    {{$course->links()}}
                </div>
                {{--<div class="cell-sm-9 cell-md-3 blog-aside">--}}
                    {{--<div class="blog-aside-item">--}}
                        {{--<h6>{{trans('app.about_us')}}</h6>--}}
                        {{--<p>فكرة , شغف ثم هدف . هذا ما قد نصف به متجر انكوم , فمنذ اللحظة الأولى لتأسيس انكوم كانت الفكرة هي إعادة تعريف مبيعات الجملة الخاصة بالأفراد و خلق بيئة تجارية موثوقة بأسعار من الواقع , بدأ الشغف في تنفيذ الفكرة فكان الهدف انكوم .</p>--}}
                    {{--</div>--}}
                    {{--<div class="blog-aside-item">--}}
                        {{--<h6>categories</h6>--}}
                        {{--<ul class="list-marked list-marked-secondary">--}}
                            {{--<li><a href="#">Business</a></li>--}}
                            {{--<li><a href="#">Tips & Tricks</a></li>--}}
                            {{--<li><a href="#">Reviews</a></li>--}}
                            {{--<li><a href="#">News</a></li>--}}
                            {{--<li><a href="#">Marketing</a></li>--}}
                        {{--</ul>--}}
                    {{--</div>--}}
                {{--</div>--}}
            </div>
        </div>
    </section>
@endsection