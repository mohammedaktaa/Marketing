<section class="section section-variant-1 bg-white">
    <div class="shell-wide">
        <div class="range range-lg-right range-30">
            <div class="cell-lg-8">
                <div class="parallax-text-wrap">
                    <h3>{{trans('app.study_with_us')}}</h3><span class="parallax-text">{{trans('app.courses')}}</span>
                </div>
                <hr class="divider divider-default">
            </div>
            <div class="cell-lg-3 text-lg-right"><a class="button button-secondary button-nina" href="#">{{trans('app.view_all_courses')}}</a></div>
        </div>
        <div class="range range-50">
            @foreach($courses as $cours)
            <div class="cell-sm-6 cell-lg-4">
                <article class="event-default-wrap">
                    <div class="event-default">
                        <figure class="event-default-image"><img src="images/event-02-570x370.jpg" alt="" width="570" height="370"/>
                        </figure>
                        <div class="event-default-date-wrap">
                            <time datetime="{{date('Y')}}"><span class="event-default-date">{{date('d', strtotime($cours->date))}}</span><span class="event-default-month">{{date('m', strtotime($cours->date))}}</span><span class="event-default-time">{{$cours->time}}</span></time>
                        </div>
                        <div class="event-default-caption"><a class="button button-xs button-secondary button-nina" href="registration-page.html">{{trans('app.book_now')}}</a></div>
                    </div>
                    <div class="event-default-inner">
                        <div class="box-inline"><span class="icon icon-md-middle icon-secondary mdi mdi-map-marker"></span><a class="event-default-link" href="single-event.html">{{$cours->place}}</a></div>
                        <h5><a class="event-default-title" href="single-event.html">{{$cours['title_'.$lang]}}</a></h5>
                    </div>
                </article>
            </div>
            @endforeach
        </div>
    </div>
</section>