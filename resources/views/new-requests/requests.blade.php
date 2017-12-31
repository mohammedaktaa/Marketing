@extends('layouts.app')
@section('title',trans('app.requests'))
@section('content')
    @php
        $imageWidth=477;
        $imageHeight=526;

    @endphp
    <section class="breadcrumbs-custom breadcrumbs-custom-svg"
             style="background: {{$style->value=='pink'?'linear-gradient(-39deg, #b91354 10%, #BE2546 40%)':'linear-gradient(-39deg, rgba(114,4,228,0.39) 10%, rgba(96,27,191,0.79) 40%)'}}">
        <div class="shell">
            <p class="heading-1 breadcrumbs-custom-title">{{trans('app.requests')}}</p>
            <ul class="breadcrumbs-custom-path">
                <li class="white"><a href="{{route('home')}}">{{trans('app.home')}}</a></li>
                <li class="active white"><a href="#">{{trans('app.requests')}}</a></li>
            </ul>
        </div>
        <div class="parallax-scene-js parallax-scene" data-scalar-x="5" data-scalar-y="10">
            <div class="layer-01">
                <div class="layer" data-depth="0.25"><img src="{{asset('images/parallax-scene-01-132x133.png')}}" alt=""
                                                          width="132" height="133"/>
                </div>
            </div>
            <div class="layer-02">
                <div class="layer" data-depth=".55"><img src="{{asset('images/parallax-scene-02-186x208.png')}}" alt=""
                                                         width="186" height="208"/>
                </div>
            </div>
            <div class="layer-03">
                <div class="layer" data-depth="0.1"><img src="{{asset('images/parallax-scene-03-108x120.png')}}" alt=""
                                                         width="108" height="120"/>
                </div>
            </div>
            <div class="layer-04">
                <div class="layer" data-depth="0.25"><img src="{{asset('images/parallax-scene-04-124x145.png')}}" alt=""
                                                          width="124" height="145"/>
                </div>
            </div>
            <div class="layer-05">
                <div class="layer" data-depth="0.15"><img src="{{asset('images/parallax-scene-05-100x101.png')}}" alt=""
                                                          width="100" height="101"/>
                </div>
            </div>
            <div class="layer-06">
                <div class="layer" data-depth="0.65"><img src="{{asset('images/parallax-scene-06-240x243.png')}}" alt=""
                                                          width="240" height="243"/>
                </div>
            </div>
        </div>
    </section>
    <section class="section section-lg bg-white text-center">
        <div class="section-wave" style="z-index: 999;">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell">
            <h3>{{trans('app.choose_request')}}</h3>
            <div class="range range-sm-center">
                <div class="cell-sm-8 cell-lg-6">
                    <div class="form-wrap box-width-1">
                        <!-- Select 2-->
                        <select class="form-control select-filter requests"
                                data-placeholder="{{trans('app.choose_request')}}"
                                data-minimum-results-for-search="Infinity" data-constraints="@Selected" name="city">
                            <option></option>
                            @foreach($types_request as $key=>$item)
                                <option value="{{$key}}">{{$item}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section section-lg bg-white text-center forms" hidden>
        <div class="shell">
            <div class="range range-xs-center">
                <div class="cell-sm-10 cell-lg-8">
                    <h3 class=" document" hidden>{{trans('app.document_request')}}</h3>
                    <form class="rd-mailform text-left document" method="post" action="{{localizeURL('request')}}"
                          hidden enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="range range-20">
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-delivery_place">{{trans('app.delivery_place')}}</label>
                                    <input class="form-input" id="forms-3-delivery_place" type="text"
                                           name="delivery_place">
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="delivery_way">{{trans('app.delivery_way')}}</label>
                                    <select id="delivery_way" class="form-control select-filter"
                                            data-placeholder="{{trans('app.choose_way')}}"
                                            data-minimum-results-for-search="Infinity" name="delivery_way">
                                        <option></option>
                                        @foreach($delivery_type as $key=>$item)
                                            <option value="{{$key}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="shipping_bool">{{trans('app.shipping_bool')}}</label>
                                    <select id="shipping_bool" class="form-control select-filter"
                                            data-placeholder="{{trans('app.yes-no')}}"
                                            data-minimum-results-for-search="Infinity" name="shipping_bool">
                                        <option></option>
                                        @foreach($yesNo as $key=>$item)
                                            <option value="{{$key}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="payment_way">{{trans('app.payment_way')}}</label>
                                    <select id="payment_way" class="form-control select-filter"
                                            data-placeholder="{{trans('app.choose_way')}}"
                                            data-minimum-results-for-search="Infinity" name="payment_way">
                                        <option></option>
                                        @foreach($payment_type as $key=>$item)
                                            <option value="{{$key}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="doc_type">{{trans('app.doc_type')}}</label>
                                    <select id="doc_type" class="form-control select-filter"
                                            data-placeholder="{{trans('app.choose_way')}}"
                                            data-minimum-results-for-search="Infinity" name="doc_type">
                                        <option></option>
                                        @foreach($doc_type as $key=>$item)
                                            <option value="{{$key}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="paper_type">{{trans('app.paper_type')}}</label>
                                    <select id="paper_type" class="form-control select-filter"
                                            data-placeholder="{{trans('app.choose_way')}}"
                                            data-minimum-results-for-search="Infinity" name="paper_type">
                                        <option></option>
                                        @foreach($paper_type as $key=>$item)
                                            <option value="{{$key}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="print_type">{{trans('app.print_type')}}</label>
                                    <select id="print_type" class="form-control select-filter"
                                            data-placeholder="{{trans('app.choose_way')}}"
                                            data-minimum-results-for-search="Infinity" name="print_type">
                                        <option></option>
                                        @foreach($print_type as $key=>$item)
                                            <option value="{{$key}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="other_choices">{{trans('app.other_choices')}}</label>
                                    <select id="other_choices" class="form-control select-filter"
                                            data-placeholder="{{trans('app.choose_way')}}"
                                            data-minimum-results-for-search="Infinity" name="other_choices">
                                        <option></option>
                                        @foreach($other_choices as $key=>$item)
                                            <option value="{{$key}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="cell-xs-12">
                                <div class="form-wrap">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="check-1">{!! trans('app.policy') !!}
                                    </label>
                                </div>
                            </div>
                            <div class="cell-md-12 offset-custom-1">
                                <div class="form-button">
                                    <button class="button button-secondary button-nina"
                                            type="submit">{{trans('app.submit')}}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <h3 class=" design" hidden>{{trans('app.design_request')}}</h3>
                    <form class="rd-mailform text-left design" method="post" action="{{localizeURL('request')}}" hidden
                          enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="range range-20">
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="payment_way">{{trans('app.payment_way')}}</label>
                                    <select id="payment_way" class="form-control select-filter"
                                            data-placeholder="{{trans('app.choose_way')}}"
                                            data-minimum-results-for-search="Infinity" name="payment_way">
                                        <option></option>
                                        @foreach($payment_type as $key=>$item)
                                            <option value="{{$key}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-description_design">{{trans('app.description_design')}}</label>
                                    <textarea class="form-input" id="forms-3-description_design"
                                              name="description_design"></textarea>
                                </div>
                            </div>
                            <div class="cell-md-12 offset-custom-1">
                                <div class="form-button">
                                    <button class="button button-secondary button-nina"
                                            type="submit">{{trans('app.submit')}}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <h3 class=" work" hidden>{{trans('app.work_request')}}</h3>
                    <form class="rd-mailform text-left work" method="post" action="{{localizeURL('request')}}" hidden
                          enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="range range-20">
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-reason">{{trans('app.reason')}}</label>
                                    <textarea class="form-input" id="forms-3-reason" name="reason"></textarea>
                                </div>
                            </div>
                            {{--<section class="section section-lg bg-white text-center">--}}
                                {{--<div class="shell">--}}
                                    {{--<h3>{{trans('app.for_cv')}}</h3>--}}
                                    {{--<div class="range range-50 range-md-center">--}}
                                        {{--<div class="cell-md-10 cell-lg-8">--}}
                                            {{--<div class="tabs-custom tabs-horizontal tabs-line" id="tabs-1">--}}
                                                {{--<!-- Nav tabs-->--}}
                                                {{--<ul class="nav nav-tabs">--}}
                                                    {{--<li><a href="#tabs-1-1"--}}
                                                           {{--data-toggle="tab">{{trans('app.upload_doc')}}</a></li>--}}
                                                    {{--<li class="active"><a href="#tabs-1-2"--}}
                                                                          {{--data-toggle="tab">{{trans('app.update_image')}}</a>--}}
                                                    {{--</li>--}}
                                                {{--</ul>--}}
                                                {{--<!-- Tab panes-->--}}
                                                {{--<div class="tab-content">--}}
                                                    {{--<div class="tab-pane fade in active" id="tabs-1-1">--}}
                                                        {{--{!!Form::open(['class'=>'ajax-form','method'=>'put']) !!}--}}
                                                            {{--<input class="doc-upload" name="doc" type="file"--}}
                                                               {{--data-type="input"--}}
                                                               {{--data-url="{{localizeURL('admin/files')}}" multiple>--}}
                                                        {{--{!!Form::close() !!}--}}
                                                    {{--</div>--}}
                                                    {{--<div class="tab-pane fade" id="tabs-1-2">--}}
                                                        {{--{!!Form::open(['class'=>'ajax-form','method'=>'put']) !!}--}}
                                                        {{--{!! Form::bsImageUpload('col_full','image',false,'',true,null,null,'','','','image',$imageWidth!==null?'data-width='.$imageWidth.' data-height='.$imageHeight:'') !!}--}}
                                                        {{--{!!Form::close() !!}--}}
                                                    {{--</div>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</section>--}}
                            <div class="cell-md-12 offset-custom-1">
                                <div class="form-button">
                                    <button class="button button-secondary button-nina"
                                            type="submit">{{trans('app.submit')}}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <h3 class=" workshop" hidden>{{trans('app.workshop_request')}}</h3>
                    <form class="rd-mailform text-left workshop" method="post" action="{{localizeURL('request')}}"
                          hidden enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="range range-20">
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-side_type">{{trans('app.side_type')}}</label>
                                    <input class="form-input" id="forms-3-side_type" type="text" name="side_type">
                                </div>
                            </div>
                            <div class="cell-md-12 offset-custom-1">
                                <div class="form-button">
                                    <button class="button button-secondary button-nina"
                                            type="submit">{{trans('app.submit')}}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

@endsection
@section('styles')
    {!! $CSS['bs-filestyle'] !!}
@endsection
@section('scripts')
    {!! $JS['bs-filestyle'] !!}
    <script>
        $(function () {
            _docUpload('.work', '', '', '');
        });

        function _uploadImages() {
            var $modal = $('#modal-image');
            $modal.find('form').attr('action', '{{localizeURL('admin/upload-image')}}');
            $modal.modal({backdrop: 'static', keyboard: false}).modal('show');
            _validate($modal);
            $('form').on('submit', function () {
                $modal.modal('hide');
            })

        }

        function _uploadFiles() {
            var $modal = $('#modal-upload-pdf');
            $modal.find('.doc-upload').attr('data-param', 'request');
            $modal.modal('show');
            var file = $modal.find('.doc-upload').data('param');
            var type = $modal.find('.doc-upload').data('type');
            var url = $modal.data('url');
            $.ajax({
                type: 'GET',
                url: url,
                data: {file: file},
                success: function (files) {
                    _docUpload($modal, file, files.files, files.config);
                }
            })
        }

        $('.select-filter').each(function () {
            $(this).select2({
                theme: 'bootstrap',
                placeholder: $(this).data('placeholder'),
                dir: dir
            })
        });
        $('.requests').on('change', function () {
            var request = $(this).find('option:selected').val();
            var $forms = $('.forms');
            $forms.show();
            $forms.find('h3').each(function () {
                $(this).hide();
            });
            $forms.find('form').each(function () {
                $(this).hide();
            });
            $forms.find('.' + request).show();
            $("body").getNiceScroll().resize();
        })
    </script>
@endsection