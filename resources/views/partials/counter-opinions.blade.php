<section class="section bg-gray-lighter bg-additional-image bg-additional-pattern-dark" dir="ltr">
    <div class="shell-custom">
        <div class="range range-sm-center range-md-middle range-lg-left range-0">
            <div class="cell-sm-10 cell-md-6">
                <div class="section-lg">
                    <div class="shell-custom-inner">
                        <h3>{{trans('app.what_people_say')}}</h3>
                        <hr class="divider divider-default">
                        <!-- Slick Carousel-->
                        <div class="slider-widget">
                            <div class="slick-slider" id="slick-1" data-arrows="true" data-loop="true" data-dots="false" data-swipe="false" data-items="1" data-custom-arrows="true">
                                @foreach($clientSay as $item)
                                <div class="item">
                                    <article class="quote-classic">
                                        <div class="quote-classic-header"><img class="quote-classic-image" src="{{asset('images/quote-user-2-210x210.jpg')}}" alt="" width="210" height="210"/>
                                            <div class="quote-classic-meta">
                                                <p class="quote-classic-cite">{{$item->client_name}}</p>
                                                <p class="quote-classic-small">{{$item->work}}</p>
                                            </div>
                                        </div>
                                        <div class="quote-classic-text">
                                            <p>{{$item->say}}</p>
                                        </div>
                                    </article>
                                </div>
                               @endforeach
                            </div>
                            <div class="slider-widget-aside">
                                <div class="icon icon-lg-smaller mdi mdi-format-quote"></div>
                                <div class="slider-nav">
                                    <button class="slick-prev mdi mdi-arrow-left-bold-circle" type="button" data-slick="slick-1"></button>
                                    <button class="slick-next mdi mdi-arrow-right-bold-circle" type="button" data-slick="slick-1"></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cell-md-6 bg-additional-item">
                <div class="section-lg">
                    <div class="shell-custom-inner shell-custom-inner-1 text-center">
                        <div class="range range-120">
                            @foreach($counters as $counter)
                            <div class="cell-xs-6 cell-sm-3 cell-md-6">
                                <div class="counter-wrap"><span class="{{$counter->icon}} mdi mdi-television-guide"></span>
                                    <div class="heading-3"><span class="counter" data-speed="500">{{$counter->count}}</span><span class="counter-preffix">+</span></div>
                                    <p>{{$counter['title_'.$lang]}}</p>
                                </div>
                            </div>
                           @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>