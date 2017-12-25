@extends('layouts.app')
@section('title')
    {{$pageName['title_'.$lang]?$pageName['title_'.$lang]:trans('app.register')}}
@endsection
@section('content')
    <section class="section fullwidth-page bg-image bg-image-4">
        <div class="fullwidth-page-inner">
            <div class="section-lg text-center">
                <div class="shell">
                    <h3>{{trans('app.register')}}</h3>
                    <div class="range range-xs-center">
                        <div class="cell-sm-8 cell-md-6 cell-lg-4">
                            <!-- RD Mailform-->
                            <form class="{{--rd-mailform rd-mailform-small--}} ajax-form" class="form-horizontal" method="POST" enctype="multipart/form-data"
                                  action="{{ route('register') }}">
                                {{csrf_field()}}
                                <div class="form-wrap   {{ $errors->has('email') ? ' has-error' : '' }}">
                                    <input class="form-input" id="form-1-email" type="email" name="email" autofocus>
                                    <label class="form-label" for="form-1-email">{{trans('app.email')}}</label>
                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                         <strong>{{ $errors->first('email') }}</strong>
                                         </span>
                                    @endif
                                </div>
                                <div class="form-wrap   {{ $errors->has('name') ? ' has-error' : '' }}">
                                    <input class="form-input" id="form-1-username" type="text" name="name">
                                    <label class="form-label" for="form-1-username">{{trans('app.username')}}</label>
                                    @if ($errors->has('name'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                <div class="form-wrap  {{ $errors->has('password') ? ' has-error' : '' }}">
                                    <input class="form-input" id="form-1-password" type="password" name="password">
                                    <label class="form-label" for="form-1-password">{{trans('app.password')}}</label>
                                     @if ($errors->has('password'))
                                         <span class="help-block">
                                         <strong>{{ $errors->first('password') }}</strong>
                                         </span>
                                     @endif
                                </div>
                                <div class="form-wrap   {{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
                                    <input class="form-input" id="form-1-password-confirm" type="password"
                                           name="password_confirmation"  >
                                    <label class="form-label"
                                           for="form-1-password-confirm">{{trans('profile.re_password')}}</label>
                                    @if ($errors->has('password_confirmation'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('password_confirmation') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                <div class="form-button">
                                    <button class="button button-block button-secondary"
                                            type="submit">{{trans('app.register')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
