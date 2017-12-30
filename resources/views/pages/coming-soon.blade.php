@extends('layouts.app')
    @section('title',$info['title_'.$lang])
@section('content')
    <section class="section fullwidth-page bg-gradient-3">
        <div class="fullwidth-page-inner">
            <div class="section-md text-center">
                <div class="shell-wide">
                    <p class="breadcrumbs-custom-subtitle">{{trans('app.ready')}}</p>
                    <div class="countdown-wrap">
                        <div class="DateCountdown" data-type="until" data-date="2017-12-26 00:00:00" data-format="wdhms" data-color="#ffec17" data-bg="rgba(255, 255, 255, 0)" data-width="0.02"></div>
                    </div>
                    <p>{{trans('app.work_hard')}}<br class="veil reveal-sm-inline">{{trans('app.launch')}}</p>
                    <div class="range range-xs-center">
                        <div class="cell-sm-10 cell-lg-5 cell-xl-4">
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
            <!-- Page Footer-->
            <div class="section-xs page-footer text-center">
                <div class="shell">
                    <p class="right">&#169; <span class="copyright-year"></span> All Rights Reserved
                        &nbsp;<a href="#">Terms of Use</a>&nbsp;<span>and</span>&nbsp;<a href="privacy-policy.html">Privacy Policy</a>
                    </p>
                </div>
            </div>
        </div>
    </section>
    @endsection