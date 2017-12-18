@extends('admin::admin-layout.app1')
@section('title')
    {{trans('app.'.$table)}}
@endsection
@section('content')
    <section>
        <div class="content-wrapper" style="border-top:none !important; ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10" style="">
                        <h2 class="color text-center nobottommargin">{{trans('app.'.$table)}}</h2>
                        <div class="color center" style="text-align: center !important;"><i class="icon icon-table"></i>
                        </div>
                        <div class="leftmargin-sm panel  panel-default {{$table}}" style="min-height:400px">
                            <div class="panel-body" style="padding: 0px !important;">
                            @php $params=\Request::getQueryString() ? ('?' . \Request::getQueryString()) : ''; @endphp
                            {!! datatable($table,$params) !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @if(view()->exists('admin::table-modal.'.$table.'-extra'))
        @include('admin::table-modal.'.$table.'-extra')
    @endif
@endsection
{{--@section('modal')--}}
{{--@endsection--}}
@section('styles')
    {!! $CSS['datatable'] !!}
    {!! $CSS['select2'] !!}
    {!! $CSS['timepicker'] !!}
    {!! $CSS['bs-filestyle'] !!}
@endsection
@section('scripts')
    {!! $JS['ckeditor'] !!}
    {!! $JS['datatable'] !!}
    {!! $JS['select2'] !!}
    {!! $JS['timepicker'] !!}
    {!! $JS['bs-filestyle'] !!}
@endsection