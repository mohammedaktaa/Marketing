<section class="breadcrumbs-custom-svg text-center">
    <!-- Swiper-->
    <div class="swiper-container swiper-slider swiper-slider_height-1 swiper-main" data-loop="false"
         data-autoplay="5500" data-simulate-touch="false" data-slide-effect="fade">
        <div class="swiper-wrapper">
            @foreach($sliders as $slider)
                <div class="swiper-slide" data-slide-bg="">
                    <div class="swiper-slide-caption">
                        <div class="shell-wide swiper-main-section">
                            <div class="range range-xs-center">
                                <div class="cell-sm-10 cell-lg-10">
                                    <p class="heading-1 breadcrumbs-custom-title" data-caption-animate="blurIn"
                                       data-caption-delay="50">{{trans('app.project_name')}}</p>
                                    <p class="heading-2" data-caption-animate="fxRotateInDown" data-caption-delay="550">
                                        {{$slider['text_'.$lang]}}</p>
                                    <div class="group-md button-group">
                                        @if($slider->num_of_btn)
                                            @if($slider->num_of_btn==1)
                                                <a class="button button-secondary button-nina button-lg"
                                                   href="{{localizeURL($slider->url1?$slider->url1:$slider->url2)}}"
                                                   data-custom-scroll-to="#start" data-caption-animate="fxRotateInDown"
                                                   data-caption-delay="550">{{$slider->btn1_text?$slider->btn1_text:$slider->btn2_text}}</a>
                                            @else
                                                <a class="button button-secondary button-nina button-lg"
                                                   href="{{localizeURL($slider->url1)}}"
                                                   data-custom-scroll-to="#start" data-caption-animate="fxRotateInDown"
                                                   data-caption-delay="550">{{$slider->btn1_text}}</a>
                                                <a class="button button-secondary button-nina button-lg"
                                                   href="{{localizeURL($slider->url2)}}"
                                                   data-custom-scroll-to="#start" data-caption-animate="fxRotateInDown"
                                                   data-caption-delay="550">{{$slider->btn2_text}}</a>
                                            @endif
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="swiper-pagination-wrap">
            <div class="swiper-pagination swiper-pagination-clickable"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>
        </div>
    </div>
    <div class="parallax-scene-js parallax-scene" data-scalar-x="5" data-scalar-y="10">
        <div class="layer-01">
            <div class="layer" data-depth="0.25"><img src="{{url('images/parallax-scene-01-132x133.png')}}" alt=""
                                                      width="132"
                                                      height="133"/>
            </div>
        </div>
        <div class="layer-02">
            <div class="layer" data-depth=".55"><img src="{{url('images/parallax-scene-02-186x208.png')}}" alt=""
                                                     width="186"
                                                     height="208"/>
            </div>
        </div>
        <div class="layer-03">
            <div class="layer" data-depth="0.1"><img src="{{url('images/parallax-scene-03-108x120.png')}}" alt=""
                                                     width="108"
                                                     height="120"/>
            </div>
        </div>
        <div class="layer-04">
            <div class="layer" data-depth="0.25"><img src="{{url('images/parallax-scene-04-124x145.png')}}" alt=""
                                                      width="124"
                                                      height="145"/>
            </div>
        </div>
        <div class="layer-05">
            <div class="layer" data-depth="0.15"><img src="{{url('images/parallax-scene-05-100x101.png')}}" alt=""
                                                      width="100"
                                                      height="101"/>
            </div>
        </div>
        <div class="layer-06">
            <div class="layer" data-depth="0.65"><img src="{{url('images/parallax-scene-06-240x243.png')}}" alt=""
                                                      width="240"
                                                      height="243"/>
            </div>
        </div>
    </div>
</section>