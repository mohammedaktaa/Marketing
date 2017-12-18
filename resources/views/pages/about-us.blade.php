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
            <div class="range range-ten range-50 range-sm-center range-md-middle range-lg-justify range-md-reverse">
                <div class="cell-sm-9 cell-md-5 cell-lg-4">
                    <h3>hi, we are brave</h3>
                    <div class="divider divider-default"></div>
                    <p class="heading-5">Brave is a team of experts bringing you an innovative web solution, which combines captivating design and flawless functionality in a multipurpose HTML template.</p>
                    <p class="text-spacing-sm">Made to be used by anyone who is looking for a stunning multifunctional website, our template is a universal solution, which can be used already after being installed. It differs from other similar projects in everything - be it the initial concept or the final look.</p><a class="button button-default-outline button-nina" href="our-history.html">learn more</a>
                </div>
                <div class="cell-sm-9 cell-md-5"><img src="images/about-us-1-720x459.jpg" alt="" width="720" height="459"/>
                </div>
            </div>
        </div>
    </section>
@endsection