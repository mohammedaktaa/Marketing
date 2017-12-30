@extends('layouts.app')
@section('title',isset($info['title_'.$lang]) ?$info['title_'.$lang]: 'title')
@section('content')
    <section class="breadcrumbs-custom breadcrumbs-custom-svg" style="background: {{$style->value=='pink'?'linear-gradient(-39deg, #b91354 10%, #BE2546 40%)':'linear-gradient(-39deg, rgba(114,4,228,0.39) 10%, rgba(96,27,191,0.79) 40%)'}}">
        <div class="shell">
            <p class="heading-1 breadcrumbs-custom-title">{{isset($info['title_'.$lang]) ?$info['title_'.$lang]: 'title'}}</p>
            <ul class="breadcrumbs-custom-path">
                <li><a href="{{route('home')}}">{{trans('app.home')}}</a></li>
                <li><a href="#">{{trans('app.pages')}}</a></li>
                <li class="active"><a href="#">{{isset($info['title_'.$lang]) ?$info['title_'.$lang]: 'title'}}</a></li>
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
    <section class="section section-lg text-center bg-white">
        <!-- section wave-->
        <div class="section-wave" style="z-index: 999">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell-wide">
            <h3>our projects</h3>
            <div class="isotope-wrap range range-0">
                <!-- Isotope Filters-->
                <div class="cell-lg-12">
                    <ul class="isotope-filters isotope-filters-horizontal">
                        <li class="block-top-level">
                            <p class="big">Choose your category:</p>
                            <!-- Isotope Filters-->
                            <button class="isotope-filters-toggle button button-xs button-primary" data-custom-toggle=".isotope-filters-list" data-custom-toggle-hide-on-blur="true">Filter<span class="caret"></span></button>
                            <ul class="isotope-filters-list">
                                <li><a class="active" data-isotope-filter="*" data-isotope-group="gallery-01" href="#">All Categories</a></li>
                                <li><a data-isotope-filter="type 1" data-isotope-group="gallery-01" href="#">Type 1</a></li>
                                <li><a data-isotope-filter="type 2" data-isotope-group="gallery-01" href="#">Type 2</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- Isotope Content-->
                <div class="cell-lg-12">
                    <div class="isotope isotope-titled-gallery" data-isotope-layout="fitRows" data-isotope-group="gallery-01" data-lightgallery="group">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 1"><a class="gallery-item titled-gallery-item" href="images/gallery-01-original.jpg" data-lightgallery="group-item">
                                    <div class="gallery-item-image">
                                        <figure><img src="images/gallery-grid-01-570x380.jpg" alt="" width="570" height="380"/>
                                        </figure>
                                        <div class="caption">
                                        </div>
                                    </div></a>
                                <div class="titled-gallery-caption"><a href="single-project.html">Conversation with Customers</a></div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 1"><a class="gallery-item titled-gallery-item" href="images/gallery-02-original.jpg" data-lightgallery="group-item">
                                    <div class="gallery-item-image">
                                        <figure><img src="images/gallery-grid-02-570x380.jpg" alt="" width="570" height="380"/>
                                        </figure>
                                        <div class="caption">
                                        </div>
                                    </div></a>
                                <div class="titled-gallery-caption"><a href="single-project.html">Lead Designer</a></div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 1"><a class="gallery-item titled-gallery-item" href="images/gallery-03-original.jpg" data-lightgallery="group-item">
                                    <div class="gallery-item-image">
                                        <figure><img src="images/gallery-grid-03-570x380.jpg" alt="" width="570" height="380"/>
                                        </figure>
                                        <div class="caption">
                                        </div>
                                    </div></a>
                                <div class="titled-gallery-caption"><a href="single-project.html">Brainstorming</a></div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 2"><a class="gallery-item titled-gallery-item" href="images/gallery-04-original.jpg" data-lightgallery="group-item">
                                    <div class="gallery-item-image">
                                        <figure><img src="images/gallery-grid-04-570x380.jpg" alt="" width="570" height="380"/>
                                        </figure>
                                        <div class="caption">
                                        </div>
                                    </div></a>
                                <div class="titled-gallery-caption"><a href="single-project.html">Sales Department</a></div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 2"><a class="gallery-item titled-gallery-item" href="images/gallery-05-original.jpg" data-lightgallery="group-item">
                                    <div class="gallery-item-image">
                                        <figure><img src="images/gallery-grid-05-570x380.jpg" alt="" width="570" height="380"/>
                                        </figure>
                                        <div class="caption">
                                        </div>
                                    </div></a>
                                <div class="titled-gallery-caption"><a href="single-project.html">Jacqueline Barnett</a></div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 2"><a class="gallery-item titled-gallery-item" href="images/gallery-06-original.jpg" data-lightgallery="group-item">
                                    <div class="gallery-item-image">
                                        <figure><img src="images/gallery-grid-06-570x380.jpg" alt="" width="570" height="380"/>
                                        </figure>
                                        <div class="caption">
                                        </div>
                                    </div></a>
                                <div class="titled-gallery-caption"><a href="single-project.html">Marketing Department</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection