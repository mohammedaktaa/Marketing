<section class="section section-lg bg-secondary-2 parallax-scene-wrapper text-center section-way-point" id="advantages">
    <div class="way-point" data-custom-scroll-to="#advantages">
        <svg version="1.1" x="0px" y="0px" width="253px" height="38px" enable-background="new 0 0 253 38" xml:space="preserve">
            <path style="clip-path: url(#gel);" fill-rule="evenodd" clip-rule="evenodd" d="M252,36.001C199.397,36.001,176,0,125.815,0                                         C76,0,52.988,36.001,0,36.001C4.336,40.465,273.563,36.001,252,36.001z"></path>
          </svg><span class="icon mdi mdi-chevron-down"></span>
    </div>
    <div class="shell">
        <h3>{{trans('app.advantages')}}</h3>
        <hr class="divider divider-default">
        <div class="range range-xs-center range-50">
            @foreach($advantages as $advantage)
            <div class="cell-sm-9 cell-md-4">
                <div class="thumbnail-classic unit unit-sm-horizontal unit-md-vertical">
                    <div class="thumbnail-classic-icon unit-left"><span class="{{$advantage->icon}} fa-2x"></span></div>
                    <div class="thumbnail-classic-caption unit-body">
                        <h6 class="thumbnail-classic-title">{{$advantage['title_'.$lang]}}</h6>
                        <hr class="divider divider-default divider-sm"/>
                        <p class="thumbnail-classic-text">{{$advantage['content_'.$lang]}}</p>
                    </div>
                </div>
            </div>
                @endforeach
        </div>
    </div>
    <div class="parallax-scene-js parallax-scene" data-scalar-x="5" data-scalar-y="10">
        <div class="layer-01">
            <div class="layer" data-depth="0.25"><img src="images/parallax-scene-01-132x133.png" alt="" width="132" height="133"/>
            </div>
        </div>
        <div class="layer-02">
            <div class="layer" data-depth=".55"><img src="images/parallax-scene-02-186x208.png" alt="" width="186" height="208"/>
            </div>
        </div>
        <div class="layer-03">
            <div class="layer" data-depth="0.1"><img src="images/parallax-scene-03-108x120.png" alt="" width="108" height="120"/>
            </div>
        </div>
        <div class="layer-04">
            <div class="layer" data-depth="0.35"><img src="images/parallax-scene-04-124x145.png" alt="" width="124" height="145"/>
            </div>
        </div>
        <div class="layer-05">
            <div class="layer" data-depth="0.08"><img src="images/parallax-scene-05-100x101.png" alt="" width="100" height="101"/>
            </div>
        </div>
        <div class="layer-06">
            <div class="layer" data-depth="0.7"><img src="images/parallax-scene-06-240x243.png" alt="" width="240" height="243"/>
            </div>
        </div>
    </div>
</section>
