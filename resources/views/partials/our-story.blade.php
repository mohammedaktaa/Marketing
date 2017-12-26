<section class="section section-variant-1 bg-white text-left" id="start">
    <!-- section wave-->
    <div class="section-wave">
        <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
            <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
        </svg>
    </div>
    <div class="shell-wide">
        <div class="range range-lg-right range-50">
            <div class="cell-lg-6">
                <div class="parallax-text-wrap">
                    <h3>{{trans('app.our_story')}}</h3><span class="parallax-text">{{trans('app.about_us')}}</span>
                </div>
                <hr class="divider divider-left divider-default">
                <div class="range">
                    <div class="cell-lg-11">
                        <div class="tabs-custom tabs-horizontal tabs-line" id="tabs-1">
                            <!-- Nav tabs-->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tabs-1-1" data-toggle="tab">{{trans('app.overview')}}</a></li>
                                <li><a href="#tabs-1-2" data-toggle="tab">{{trans('app.founder')}}</a></li>
                                <li><a href="#tabs-1-3" data-toggle="tab">{{trans('app.mission')}}</a></li>
                            </ul>
                            <!-- Tab panes-->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="tabs-1-1">
                                    <p>{!! $manager['overview'] !!}</p>
                                </div>
                                <div class="tab-pane fade" id="tabs-1-2">
                                    <!-- Card info-->
                                    <article class="card-info">
                                        <div class="card-info-aside"><img class="card-info-image" src="{{asset(\App\Models\Manager::IMAGE_File_PATH.$manager->image_manager)}}" alt="" width="150" height="150"/>
                                        </div>
                                        <div class="card-info-main">
                                            <h5 class="card-info-title">{{$manager['name']}}</h5>
                                            <p class="card-info-subtitle">{{trans('app.founder')}}</p>
                                            <p>{!! $manager['about_manager'] !!}</p>
                                        </div>
                                    </article>
                                </div>
                                <div class="tab-pane fade" id="tabs-1-3">
                                    <div class="box-width-2">
                                        <p>{!! $manager['mission'] !!}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>