@extends('layouts.app')
@section('title')
    {{trans('title')}}
@endsection
@section('content')
    <section class="section section-lg-top text-center bg-white">
        <!-- section wave-->
        <div class="section-wave">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <h3>our projects</h3>
        <div class="isotope-wrap range range-50">
            <!-- Isotope Filters-->
            <div class="cell-lg-12">
                <ul class="isotope-filters isotope-filters-horizontal">
                    <li class="block-top-level">
                        <p class="big">Choose your category:</p>
                        <!-- Isotope Filters-->
                        <button class="isotope-filters-toggle button button-xs button-primary" data-custom-toggle=".isotope-filters-list" data-custom-toggle-hide-on-blur="true">Filter<span class="caret"></span></button>
                        <ul class="isotope-filters-list">
                            <li><a class="active" data-isotope-filter="*" data-isotope-group="gallery-02" href="#">All Categories</a></li>
                            <li><a data-isotope-filter="type 1" data-isotope-group="gallery-02" href="#">Type 1</a></li>
                            <li><a data-isotope-filter="type 2" data-isotope-group="gallery-02" href="#">Type 2</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- Isotope Content-->
            <div class="cell-lg-12">
                <div class="isotope" data-isotope-layout="fitRows" data-isotope-group="gallery-02" data-lightgallery="group">
                    <div class="row row-condensed row-no-gutter">
                        <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 1"><a class="gallery-item gallery-item-fullwidth" href="images/gallery-01-original.jpg" data-lightgallery="group-item">
                                <div class="gallery-item-image">
                                    <figure><img src="images/gallery-fullwidth-01-640x430.jpg" alt="" width="640" height="430"/>
                                    </figure>
                                    <div class="caption">
                                        <p class="caption-title">photo #1</p>
                                        <p class="caption-text">Brave offers you a variety of useful features based on Bootstrap framework.</p>
                                    </div>
                                </div></a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 1"><a class="gallery-item gallery-item-fullwidth" href="images/gallery-02-original.jpg" data-lightgallery="group-item">
                                <div class="gallery-item-image">
                                    <figure><img src="images/gallery-fullwidth-02-640x430.jpg" alt="" width="640" height="430"/>
                                    </figure>
                                    <div class="caption">
                                        <p class="caption-title">photo #2</p>
                                        <p class="caption-text">Brave offers you a variety of useful features based on Bootstrap framework.</p>
                                    </div>
                                </div></a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 1"><a class="gallery-item gallery-item-fullwidth" href="images/gallery-03-original.jpg" data-lightgallery="group-item">
                                <div class="gallery-item-image">
                                    <figure><img src="images/gallery-fullwidth-03-640x430.jpg" alt="" width="640" height="430"/>
                                    </figure>
                                    <div class="caption">
                                        <p class="caption-title">photo #3</p>
                                        <p class="caption-text">Brave offers you a variety of useful features based on Bootstrap framework.</p>
                                    </div>
                                </div></a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 2"><a class="gallery-item gallery-item-fullwidth" href="images/gallery-04-original.jpg" data-lightgallery="group-item">
                                <div class="gallery-item-image">
                                    <figure><img src="images/gallery-fullwidth-04-640x430.jpg" alt="" width="640" height="430"/>
                                    </figure>
                                    <div class="caption">
                                        <p class="caption-title">photo #4</p>
                                        <p class="caption-text">Brave offers you a variety of useful features based on Bootstrap framework.</p>
                                    </div>
                                </div></a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 2"><a class="gallery-item gallery-item-fullwidth" href="images/gallery-05-original.jpg" data-lightgallery="group-item">
                                <div class="gallery-item-image">
                                    <figure><img src="images/gallery-fullwidth-05-640x430.jpg" alt="" width="640" height="430"/>
                                    </figure>
                                    <div class="caption">
                                        <p class="caption-title">photo #5</p>
                                        <p class="caption-text">Brave offers you a variety of useful features based on Bootstrap framework.</p>
                                    </div>
                                </div></a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 isotope-item" data-filter="type 2"><a class="gallery-item gallery-item-fullwidth" href="images/gallery-06-original.jpg" data-lightgallery="group-item">
                                <div class="gallery-item-image">
                                    <figure><img src="images/gallery-fullwidth-06-640x430.jpg" alt="" width="640" height="430"/>
                                    </figure>
                                    <div class="caption">
                                        <p class="caption-title">photo #6</p>
                                        <p class="caption-text">Brave offers you a variety of useful features based on Bootstrap framework.</p>
                                    </div>
                                </div></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection