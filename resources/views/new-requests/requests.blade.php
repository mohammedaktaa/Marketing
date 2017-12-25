@extends('layouts.app')
@section('title',trans('app.requests'))
@section('content')
    <section class="section section-lg bg-white text-center">
        <div class="shell">
            <h3>{{trans('app.choose_request')}}</h3>
            <div class="range range-sm-center">
                <div class="cell-sm-8 cell-lg-6">
                    <div class="form-wrap box-width-1">
                        <!-- Select 2-->
                        <select class="form-control select-filter requests" data-placeholder="{{trans('app.choose_request')}}" data-minimum-results-for-search="Infinity" data-constraints="@Selected" name="city">
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
                    <form class="rd-mailform text-left document" method="post" action="{{localizeURL('request')}}" hidden enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="range range-20">
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-name">{{trans('app.name')}}</label>
                                    <input class="form-input" id="forms-3-name" type="text" name="name" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-phone">{{trans('app.phone')}}</label>
                                    <input class="form-input" id="forms-3-phone" type="text" name="phone" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-email">{{trans('app.email')}}</label>
                                    <input class="form-input" id="forms-3-email" type="email" name="email" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-delivery_place">{{trans('app.delivery_place')}}</label>
                                    <input class="form-input" id="forms-3-delivery_place" type="text" name="delivery_place" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="delivery_way">{{trans('app.delivery_way')}}</label>
                                    <select id="delivery_way" class="form-control select-filter" data-placeholder="{{trans('app.choose_way')}}" data-minimum-results-for-search="Infinity"  name="delivery_way">
                                        <option ></option>
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
                                    <select id="shipping_bool" class="form-control select-filter" data-placeholder="{{trans('app.yes-no')}}" data-minimum-results-for-search="Infinity"  name="shipping_bool">
                                        <option ></option>
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
                                    <select id="payment_way" class="form-control select-filter" data-placeholder="{{trans('app.choose_way')}}" data-minimum-results-for-search="Infinity"  name="payment_way">
                                        <option ></option>
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
                                    <select id="doc_type" class="form-control select-filter" data-placeholder="{{trans('app.choose_way')}}" data-minimum-results-for-search="Infinity"  name="doc_type">
                                        <option ></option>
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
                                    <select id="paper_type" class="form-control select-filter" data-placeholder="{{trans('app.choose_way')}}" data-minimum-results-for-search="Infinity"  name="paper_type">
                                        <option ></option>
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
                                    <select id="print_type" class="form-control select-filter" data-placeholder="{{trans('app.choose_way')}}" data-minimum-results-for-search="Infinity"  name="print_type">
                                        <option ></option>
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
                                    <select id="other_choices" class="form-control select-filter" data-placeholder="{{trans('app.choose_way')}}" data-minimum-results-for-search="Infinity"  name="other_choices">
                                        <option ></option>
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
                                    <button class="button button-secondary button-nina" type="submit">{{trans('app.submit')}}</button>
                                </div>
                                <a href="#" onclick="_uploadImages()"><em class="icon-image"></em></a>
                                <a href="#" onclick="_uploadFiles()"><em class="icon-image"></em></a>
                            </div>
                        </div>
                    </form>
                    <h3 class=" design" hidden>{{trans('app.design_request')}}</h3>
                    <form class="rd-mailform text-left design" method="post" action="{{localizeURL('request')}}" hidden enctype="multipart/form-data">
                      {{csrf_field()}}
                        <div class="range range-20">
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-name">{{trans('app.name')}}</label>
                                    <input class="form-input" id="forms-3-name" type="text" name="name" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-phone">{{trans('app.phone')}}</label>
                                    <input class="form-input" id="forms-3-phone" type="text" name="phone" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-email">{{trans('app.email')}}</label>
                                    <input class="form-input" id="forms-3-email" type="email" name="email" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap">
                                    <!-- Select 2-->
                                    <label for="payment_way">{{trans('app.payment_way')}}</label>
                                    <select id="payment_way" class="form-control select-filter" data-placeholder="{{trans('app.choose_way')}}" data-minimum-results-for-search="Infinity"  name="payment_way">
                                        <option ></option>
                                        @foreach($payment_type as $key=>$item)
                                            <option value="{{$key}}">{{$item}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-description_design">{{trans('app.description_design')}}</label>
                                    <textarea class="form-input" id="forms-3-description_design"  name="description_design" ></textarea>
                                </div>
                            </div>
                            <div class="cell-md-12 offset-custom-1">
                                <div class="form-button">
                                    <button class="button button-secondary button-nina" type="submit">{{trans('app.submit')}}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <h3 class=" work" hidden>{{trans('app.work_request')}}</h3>
                    <form class="rd-mailform text-left work" method="post" action="{{localizeURL('request')}}" hidden enctype="multipart/form-data">
                       {{csrf_field()}}
                        <div class="range range-20">
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-name">{{trans('app.name')}}</label>
                                    <input class="form-input" id="forms-3-name" type="text" name="name" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-phone">{{trans('app.phone')}}</label>
                                    <input class="form-input" id="forms-3-phone" type="text" name="phone" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-email">{{trans('app.email')}}</label>
                                    <input class="form-input" id="forms-3-email" type="email" name="email" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-reason">{{trans('app.reason')}}</label>
                                    <textarea class="form-input" id="forms-3-reason"  name="reason" ></textarea>
                                </div>
                            </div>
                            <div class="cell-md-12 offset-custom-1">
                                <div class="form-button">
                                    <button class="button button-secondary button-nina" type="submit">{{trans('app.submit')}}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <h3 class=" workshop" hidden>{{trans('app.workshop_request')}}</h3>
                    <form class="rd-mailform text-left workshop" method="post" action="{{localizeURL('request')}}" hidden enctype="multipart/form-data">
                       {{csrf_field()}}
                        <div class="range range-20">
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-name">{{trans('app.name')}}</label>
                                    <input class="form-input" id="forms-3-name" type="text" name="name" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-phone">{{trans('app.phone')}}</label>
                                    <input class="form-input" id="forms-3-phone" type="text" name="phone" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-email">{{trans('app.email')}}</label>
                                    <input class="form-input" id="forms-3-email" type="email" name="email" >
                                </div>
                            </div>
                            <div class="cell-sm-6">
                                <div class="form-wrap form-wrap-validation">
                                    <label for="forms-3-side_type">{{trans('app.side_type')}}</label>
                                    <input class="form-input" id="forms-3-side_type" type="text" name="side_type" >
                                </div>
                            </div>
                            <div class="cell-md-12 offset-custom-1">
                                <div class="form-button">
                                    <button class="button button-secondary button-nina" type="submit">{{trans('app.submit')}}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    @php
        $imageWidth=477;
        $imageHeight=526;

    @endphp
    <div class="modal fade" id="modal-image">
        <div class="modal-dialog" style="min-width: 75%">
            <div class="modal-content">
                {!!Form::open(['class'=>'ajax-form','method'=>'put']) !!}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                class="sr-only">@lang('app.close')</span></button>
                    <h4 class="modal-title">@lang('app.update_image')</h4>
                </div>
                <div class=" modal-body clearfix margin-sm">
                    {!! Form::thImageUpload('col_full','image',false,'',true,null,null,'','','','image',$imageWidth!==null?'data-width='.$imageWidth.' data-height='.$imageHeight:'') !!}
                </div>
                <div class="modal-footer">
                    <button type="submit" class="button button-3d button-reveal button-reveal "><i
                                class="icon-plus"></i><span>@lang('app.save')</span></button>
                    <button type="button" class="button button-3d button-white color button-reveal  " data-dismiss="modal">
                        <i class="icon-close"></i><span> @lang('app.close')</span></button>
                </div>
                {!!Form::close() !!}
            </div>
        </div>
    </div>
    <div class="modal fade" id="modal-upload-pdf" data-url="{{localizeURL('admin/files')}}" style="z-index: 199999999">
        <div class="modal-dialog" style="min-width: 75%">
            <div class="modal-content">
                {!!Form::open(['class'=>'ajax-form','method'=>'put']) !!}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                class="sr-only">@lang('app.close')</span></button>
                    <h4 class="modal-title">@lang('app.upload_doc')</h4>
                </div>
                <div class=" modal-body clearfix ">
                    <div class="form-group">
                        <input class="doc-upload" name="doc" type="file" data-type="input"
                               data-url="{{localizeURL('admin/files')}}" multiple>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="button button-3d button-white color button-reveal  " data-dismiss="modal">
                        <i class="icon-close"></i><span> @lang('app.close')</span></button>
                </div>
                {!!Form::close() !!}
            </div>
        </div>
    </div>
@endsection
@section('styles')
    {!! $CSS['bs-filestyle'] !!}
    @endsection
@section('scripts')
    {!! $JS['bs-filestyle'] !!}
    <script>
        function _uploadImages() {
            var $modal = $('#modal-image');
            $modal.find('form').attr('action', '{{localizeURL('admin/upload-image')}}');
            $modal.modal({backdrop: 'static', keyboard: false}).modal('show');
            _validate($modal);
            $('form').on('submit',function () {
                $modal.modal('hide');
            })

        }
        function _uploadFiles() {
            var $modal = $('#modal-upload-pdf');
            $modal.find('.doc-upload').attr('data-param', 'request' );
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
                theme:'bootstrap',
                placeholder:$(this).data('placeholder'),
                dir:dir
            })
        });
        $('.requests').on('change',function () {
           var request=$(this).find('option:selected').val();
           var $forms=$('.forms');
           $forms.show();
            $forms.find('h3').each(function () {
                $(this).hide();
            });
           $forms.find('form').each(function () {
               $(this).hide();
           });
           $forms.find('.'+request).show();
            $("body").getNiceScroll().resize();
        })
    </script>
    @endsection