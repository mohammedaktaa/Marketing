@extends('layouts.app')
@section('title')
    {{$pageName['title_'.$lang]}}
@endsection
@section('content')
    <section class="section fullwidth-page bg-gradient-3">
        <div class="fullwidth-page-inner">
            <div class="section-md text-center">
                <div class="shell-wide">
                    <p class="breadcrumbs-custom-subtitle">{{trans('app.ready')}}</p>
                    <p class="heading-1 breadcrumbs-custom-title">{!! trans('app.constructor') !!}</p>
                    <p>{{trans('app.work_hard')}}<br class="veil reveal-sm-inline">{{trans('app.launch')}}</p>
                    <div class="range range-xs-center">
                        <div class="cell-sm-8 cell-lg-6 cell-xl-4">
                            <!-- RD Mailform: Subscribe-->
                            <form class="rd-mailform rd-mailform-inline rd-mailform-sm rd-mailform-inline-modern" data-form-output="form-output-global" data-form-type="subscribe" method="post" action="bat/rd-mailform.php">
                                <div class="rd-mailform-inline-inner">
                                    <div class="form-wrap">
                                        <input class="form-input" type="email" name="email" data-constraints="@Email @Required" id="subscribe-form-email-1"/>
                                        <label class="form-label" for="subscribe-form-email-1">{{trans('app.enter_email')}}</label>
                                    </div>
                                    <button class="button form-button button-sm button-secondary button-nina" type="submit">{{trans('app.submit')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @endsection