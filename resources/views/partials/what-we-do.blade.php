<section class="section section-variant-2 bg-secondary-2 section-way-point" id="main-features">
    <div class="way-point" data-custom-scroll-to="#main-features">
        <svg version="1.1" x="0px" y="0px" width="253px" height="38px" enable-background="new 0 0 253 38" xml:space="preserve">
            <path style="clip-path: url(#gel);" fill-rule="evenodd" clip-rule="evenodd" d="M252,36.001C199.397,36.001,176,0,125.815,0                                             C76,0,52.988,36.001,0,36.001C4.336,40.465,273.563,36.001,252,36.001z"></path>
          </svg><span class="icon mdi mdi-chevron-down"></span>
    </div>
    <div class="shell-wide">
        <div class="range text-center">
            <div class="cell-xs-12">
                <h3>{{trans('app.what_we_do')}}</h3>
                <div class="divider divider-default"></div>
            </div>
        </div>
        <div class="range range-50 range-xl-90 offset-custom-2">
            @foreach($services as $service)
            <div class="cell-xs-10 cell-sm-6 cell-lg-3">
                <article class="box-minimal">
                    <div class="box-minimal-header">
                        <div class="fa fa-2x {{$service->icon}}"></div>
                        <h6 class="box-minimal-title">{{$service['name_'.$lang]}}</h6>
                    </div>
                    <div class="box-minimal-text">{{$service['content_'.$lang]}}</div>
                </article>
            </div>
            @endforeach
        </div>
    </div>
</section>