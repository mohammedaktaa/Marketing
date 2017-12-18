<section class="section section-variant-1 bg-white text-center text-xs-left">
    <div class="shell shell-wide">
        <div class="range range-lg-right range-30">
            <div class="cell-lg-8">
                <div class="parallax-text-wrap">
                    <h3>{{trans('app.meet_our_people')}}</h3><span class="parallax-text">{{trans('app.our_team')}}</span>
                </div>
                <hr class="divider divider-default">
            </div>
            <div class="cell-lg-3 text-lg-right"><a class="button button-secondary button-nina" href="about-us.html">{{trans('app.view_all_team')}}</a></div>
        </div>
        <!-- Owl Carousel-->
        <div class="owl-carousel owl-carousel-team" data-items="1" data-xs-items="2" data-sm-items="3" data-lg-items="4" data-xl-items="6" data-stage-padding="0" data-loop="true" data-margin="30" data-mouse-drag="false" data-dots="true">
                @foreach($team as $item)
            <div class="team-classic">
                <div class="team-classic-image">
                    <figure><img src="{{\App\Models\Team::IMAGE_File_PATH.$item->image}}" alt="" width="270" height="270"/>
                    </figure>
                    <div class="team-classic-image-caption">
                        <ul class="list-inline list-team">
                            @if($item->facebook)<li><a class="icon icon-sm-bigger icon-white mdi mdi-facebook" href="{{$item->facebook}}" target="_blank"></a></li>@endif
                            @if($item->google)<li><a class="icon icon-sm-bigger icon-white mdi mdi-google-plus" href="{{$item->google}}" target="_blank"></a></li>@endif
                            @if($item->linkedin)<li><a class="icon icon-sm-bigger icon-white mdi mdi-linkedin" href="{{$item->linkedin}}" target="_blank"></a></li>@endif
                        </ul>
                    </div>
                </div>
                <div class="team-classic-caption">
                    <h5><a class="team-classic-title" href="about-me.html">{{$item['name_'.$lang]}}</a></h5>
                    <p class="team-classic-job-position">{{$item['job_title_'.$lang]}}</p><a class="button button-xs button-default-outline" href="about-me.html">get in touch</a>
                </div>
            </div>
                @endforeach
        </div>
    </div>
</section>