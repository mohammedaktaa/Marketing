@extends('layouts.app')
@section('title')
    {{trans('title')}}
@endsection
@section('content')
    <section class="section section-lg text-center text-sm-left bg-white">
        <!-- section wave-->
        <div class="section-wave"style="z-index: 1999;">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-wide">
            <div class="range range-50 range-sm-center range-lg-right range-xl-right">
                <div class="cell-sm-9 cell-md-8 cell-lg-6 cell-xl-5">
                    <div class="box-range-content">
                        <h3>a few words about us</h3>
                        <div class="divider divider-default"></div>
                        <p class="text-spacing-sm">{!! $info['content_'.$lang] !!}</p>
                    </div>
                </div>
                <div class="cell-sm-9 cell-md-8 cell-lg-6 cell-xl-6 jp-video-init">
                    <div class="build-video">
                        <div class="build-video-inner"><img class="image-wrap" src="images/block-video-870x500.png" alt="" width="870" height="500"/>
                        </div>
                        <div class="build-video-element">
                            <div class="jp-video jp-video-single">
                                <div class="jp-type-playlist">
                                    <!-- Hidden playlist for script-->
                                    <ul class="jp-player-list">
                                        <li class="jp-player-list-item" data-jp-m4v="video/video.mp4" data-jp-title="local video" data-jp-poster="images/video-poster.jpg"></li>
                                    </ul>
                                    <!-- container in which our video will be played-->
                                    <div class="jp-jplayer"></div>
                                    <!-- main containers for our controls-->
                                    <div class="jp-gui">
                                        <div class="jp-interface">
                                            <div class="jp-controls-holder">
                                                <!-- play and pause buttons--><a class="jp-play" href="javascript:;" tabindex="1">play</a><a class="jp-pause" href="javascript:;" tabindex="1">pause</a><span class="separator sep-1"></span>
                                                <!-- progress bar-->
                                                <div class="jp-progress">
                                                    <div class="jp-seek-bar">
                                                        <div class="jp-play-bar"><span></span></div>
                                                    </div>
                                                </div>
                                                <div class="jp-time-wrapper">
                                                    <!-- time notifications-->
                                                    <div class="jp-current-time"></div><span class="time-sep">/</span>
                                                    <div class="jp-duration"></div>
                                                </div><span class="separator sep-2"></span>
                                                <!-- mute / unmute toggle--><a class="jp-mute" href="javascript:;" tabindex="1" title="mute">mute</a><a class="jp-unmute" href="javascript:;" tabindex="1" title="unmute">unmute</a>
                                                <!-- volume bar-->
                                                <div class="jp-volume-bar">
                                                    <div class="jp-volume-bar-value"><span class="handle"></span></div>
                                                </div><span class="separator sep-2"></span>
                                                <!-- full screen toggle--><a class="jp-full-screen" href="javascript:;" tabindex="1" title="full screen">full screen</a><a class="jp-restore-screen" href="javascript:;" tabindex="1" title="restore screen">restore screen</a>
                                            </div>
                                            <!-- end jp-controls-holder-->
                                        </div>
                                        <!-- end jp-interface-->
                                    </div>
                                    <!-- end jp-gui-->
                                    <!-- unsupported message-->
                                    <div class="jp-playlist">
                                        <ul>
                                            <li></li>
                                        </ul>
                                    </div>
                                    <div class="jp-no-solution"><span>Update Required</span>Here's a message which will appear if the video isn't supported. A Flash alternative can be used here if you fancy it.</div>
                                    <!-- end jp_container_1-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section section-lg text-center bg-gray-darker">
        <div class="shell-wide">
            <h3>our advantages</h3>
            <div class="divider divider-default"></div>
            <div class="range range-50 range-xs-center text-left">
                <div class="cell-xs-10 cell-sm-6 cell-lg-3">
                    <article class="box-minimal box-minimal-border">
                        <div class="box-minimal-icon mdi mdi-thumb-up-outline"></div>
                        <p class="big box-minimal-title">Individual Approach</p>
                        <hr>
                        <div class="box-minimal-text">We use an individual approach to each client and we never offer you a set of standard decisions for your business.</div>
                    </article>
                </div>
                <div class="cell-xs-10 cell-sm-6 cell-lg-3">
                    <article class="box-minimal box-minimal-border">
                        <div class="box-minimal-icon mdi mdi-account-multiple"></div>
                        <p class="big box-minimal-title">Qualified Employers</p>
                        <hr>
                        <div class="box-minimal-text">Brave is a team of designers, developers, marketing experts and managers who are ready to work for a personalized web solution.</div>
                    </article>
                </div>
                <div class="cell-xs-10 cell-sm-6 cell-lg-3">
                    <article class="box-minimal box-minimal-border">
                        <div class="box-minimal-icon mdi mdi-headset"></div>
                        <p class="big box-minimal-title">24/7 Online Support</p>
                        <hr>
                        <div class="box-minimal-text">Our online support is available 24 hours a day to answer your every question and help you solve any issue you may have with Brave.</div>
                    </article>
                </div>
                <div class="cell-xs-10 cell-sm-6 cell-lg-3">
                    <article class="box-minimal box-minimal-border">
                        <div class="box-minimal-icon mdi mdi-credit-card"></div>
                        <p class="big box-minimal-title">Various Payment Methods</p>
                        <hr>
                        <div class="box-minimal-text">We provide a variety of payment methods with Brave that include Paypal, Visa/Mastercard/American Express and lots of others.</div>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <section class="section section-wrap section-wrap-equal">
        <div class="section-wrap-inner">
            <div class="shell shell-bigger">
                <div class="range range-ten range-sm-center range-md-left range-lg-justify">
                    <div class="cell-sm-8 cell-md-4">
                        <div class="section-lg">
                            <h3>copywriting</h3>
                            <div class="divider divider-default"></div>
                            <p>Brave includes high-quality multipurpose texts, which you can use as a basis for your own website. Our copywriters provided every page of the template with written content.</p><a class="button button-secondary button-nina" href="single-service.html">learn more</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section-wrap-aside section-wrap-image"><img src="images/services-1-960x660.jpg" alt="" width="960" height="660"/>
            </div>
        </div>
    </section>
    <section class="section section-wrap section-wrap-equal section-md-reverse">
        <div class="section-wrap-inner">
            <div class="shell shell-bigger">
                <div class="range range-ten range-sm-center range-md-left range-lg-justify">
                    <div class="cell-sm-8 cell-md-4">
                        <div class="section-lg">
                            <h3>graphic design</h3>
                            <div class="divider divider-default"></div>
                            <p>Graphic design plays a vital role in all our templates. In Brave, it stands in the first place. Performed by qualified and highly talented designers, this template can impress anyone.</p><a class="button button-secondary button-nina" href="single-service.html">learn more</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section-wrap-aside section-wrap-image"><img src="images/services-2-960x660.jpg" alt="" width="960" height="660"/>
            </div>
        </div>
    </section>
    <section class="section section-wrap section-wrap-equal">
        <div class="section-wrap-inner">
            <div class="shell shell-bigger">
                <div class="range range-ten range-sm-center range-md-left range-lg-justify">
                    <div class="cell-sm-8 cell-md-4">
                        <div class="section-lg">
                            <h3>photo production</h3>
                            <div class="divider divider-default"></div>
                            <p>Brave uses brilliantly looking images to reflect how a customer can use the potential of the template to reach their clients’ attention. All premium images are included.</p><a class="button button-secondary button-nina" href="single-service.html">learn more</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section-wrap-aside section-wrap-image"><img src="images/services-3-960x660.jpg" alt="" width="960" height="660"/>
            </div>
        </div>
    </section>
    <section class="section section-wrap section-wrap-equal section-md-reverse">
        <div class="section-wrap-inner">
            <div class="shell shell-bigger">
                <div class="range range-ten range-sm-center range-md-left range-lg-justify">
                    <div class="cell-sm-8 cell-md-4">
                        <div class="section-lg">
                            <h3>sound design</h3>
                            <div class="divider divider-default"></div>
                            <p>Our templates differ from those of our competitors not only by exceptional design and features but also by the sound design reflected in every video/audio presentation we make.</p><a class="button button-secondary button-nina" href="single-service.html">learn more</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section-wrap-aside section-wrap-image"><img src="images/services-4-960x660.jpg" alt="" width="960" height="660"/>
            </div>
        </div>
    </section>
    <section class="section section-lg text-center bg-gray-lighter">
        <div class="shell shell-bigger">
            <h3>testimonials</h3>
            <div class="divider divider-default"></div>
            <!-- Owl Carousel-->
            <div class="owl-carousel owl-layout-1" data-items="1" data-dots="true" data-nav="true" data-stage-padding="0" data-loop="true" data-margin="30" data-mouse-drag="false">
                <article class="quote-boxed">
                    <div class="quote-boxed-aside"><img class="quote-boxed-image" src="images/quote-user-1-210x210.jpg" alt="" width="210" height="210"/>
                    </div>
                    <div class="quote-boxed-main">
                        <div class="quote-boxed-text">
                            <p>Every writer needs to refresh the look of his/hers website from time to time, and that’s why I was looking for a new design for my website. I do not often choose website templates, but Brave really amazed me with its functionality. Actually, I doubt that you may find another template so powerful to cover all your design needs.</p>
                        </div>
                        <div class="quote-boxed-meta">
                            <p class="quote-boxed-cite">Philip Lawrence</p>
                            <p class="quote-boxed-small">Regular Customer</p>
                        </div>
                    </div>
                </article>
                <article class="quote-boxed">
                    <div class="quote-boxed-aside"><img class="quote-boxed-image" src="images/quote-user-2-210x210.jpg" alt="" width="210" height="210"/>
                    </div>
                    <div class="quote-boxed-main">
                        <div class="quote-boxed-text">
                            <p>My company needed a new design for our new website and we decided to stop on Brave. No HTML template that we’ve seen before hasn’t even come close to what your designers and developers done. It’s a truly amazing solution and if you still hesitate whether to buy this template or not, I recommend you to buy it now.</p>
                        </div>
                        <div class="quote-boxed-meta">
                            <p class="quote-boxed-cite">Debra Ortega</p>
                            <p class="quote-boxed-small">Regular Customer</p>
                        </div>
                    </div>
                </article>
                <article class="quote-boxed">
                    <div class="quote-boxed-aside"><img class="quote-boxed-image" src="images/quote-user-3-210x210.jpg" alt="" width="210" height="210"/>
                    </div>
                    <div class="quote-boxed-main">
                        <div class="quote-boxed-text">
                            <p>This template is a universal solution, which I was looking for so long. With Brave, I can now showcase all my projects and receive instant feedback from my website visitors. It is an easy-to-use and very powerful product, and the features it has will come in handy if you need a reliable and stunning website.</p>
                        </div>
                        <div class="quote-boxed-meta">
                            <p class="quote-boxed-cite">Jose Gutierrez</p>
                            <p class="quote-boxed-small">Regular Customer</p>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </section>
    <section class="section section-xs text-center bg-gradient-1">
        <div class="shell-wide">
            <div class="box-cta-thin">
                <p class="big"><span class="label-cta label-cta-primary">Hot!</span><strong>Brave Corporate </strong><span>&nbsp;is your choice in the world of great templates.&nbsp;</span><a class="link-bold" href="#template-link" target="_blank">Buy it now!</a></p>
            </div>
        </div>
    </section>
@endsection