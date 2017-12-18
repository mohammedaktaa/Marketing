@extends('layouts.app')
@section('title')
    {{trans('title')}}
@endsection
@section('content')
    <section class="section section-lg text-center text-sm-left bg-white">
        <!-- section wave-->
        <div class="section-wave">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-bigger">
            <div class="range range-ten range-50 range-sm-center range-lg-justify">
                <div class="cell-sm-7 cell-xl-6">
                    <h3>about this project</h3>
                    <div class="divider divider-default"></div>
                    <div class="box-2-columns">
                        <p class="heading-5">Brave is an innovative web solution, which combines captivating design and flawless functionality in a multipurpose HTML template.</p>
                        <p class="text-spacing-sm">Made to be used by anyone who is looking for a stunning multifunctional website, this template is a universal solution, which can be used already after being installed. It differs from other similar projects in everything - be it the initial concept or the final look.  Brave also can boast the set of powerful features that can be used by anyone without being afraid to overload their site.</p>
                        <p class="text-spacing-sm">We establish a relationship with all of our clients, and we feel it is our responsibility to help them grow and harness the opportunity of their presence on the Internet.</p>
                    </div>
                </div>
                <div class="cell-sm-3">
                    <ul class="list-lg">
                        <li>
                            <p><b class="text-gray-darker">Agency</b></p>
                            <p><a class="link-text-color" href="http://templateMonster.com">TemplateMonster.com</a></p>
                        </li>
                        <li>
                            <p><b class="text-gray-darker">Services</b></p>
                            <p>UX Research, Prototyping, Design, Development, Digital Strategy, Marketing</p>
                        </li>
                        <li>
                            <p><b class="text-gray-darker">Brief</b></p>
                            <p>Designed as a universal solution for any HTML-based website, Brave can be used by anyone, from freelancers to corporate web managers, to create a website that is made to impress.</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
@endsection