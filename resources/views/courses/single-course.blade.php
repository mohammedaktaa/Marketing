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
        <div class="shell-wide">
            <div class="range range-xs-center">
                <div class="cell-md-10 cell-lg-8 cell-xl-6 sections-collapsable">
                    <article class="post-blog-article">
                        <p class="post-blog-article-title">{{$course['title_'.$lang]}}
                        <ul class="post-blog-article-meta group-xl">
                            <li>
                                <div class="box-inline"><span class="icon icon-md icon-primary mdi mdi-calendar-clock"></span>
                                    <time datetime="2017">{{$course->date}} {{trans('app.at')}} {{$course->time}} </time>
                                </div>
                            </li>
                        </ul>
                        <img src="{{asset('images/blog.jpg')}}" alt="" width="870" height="580"/>
                        <p>{{$course->place}}</p>
                    </article>
                </div>
            </div>
        </div>
    </section>
@endsection