@extends('layouts.app')
@section('title')
    {{$pageName['title_'.$lang]?$pageName['title_'.$lang]:trans('app.login')}}
@endsection
@section('content')
    <section class="section fullwidth-page bg-image bg-image-4">
        <div class="fullwidth-page-inner">
            <div class="section-md text-center">
                <div class="shell">
                    <h3>{{trans('app.login')}}</h3>
                    <div class="range range-xs-center">
                        <div class="cell-sm-8 cell-md-6 cell-lg-4">
                            <!-- RD Mailform-->
                            <form class="rd-mailform ajax-form" action="{{route('login')}}" method="post" enctype="multipart/form-data">
                                {{csrf_field()}}
                                <div class="form-wrap form-wrap-validation {{ $errors->has('email') ? ' has-error' : '' }}">
                                    <input class="form-input" id="forms-login-name" type="email" name="email" placeholder="{{trans('app.email')}}" data-constraints="@Required">
                                    <label class="form-label" for="forms-login-name"></label>
                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div class="form-wrap form-wrap-validation {{ $errors->has('password') ? ' has-error' : '' }}">
                                    <input class="form-input" id="forms-login-password" type="password" name="password" placeholder="{{trans('app.password')}}" data-constraints="@Required">
                                    <label class="form-label" for="forms-login-password"></label>
                                    @if ($errors->has('password'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div class="form-button">
                                    <button class="button button-block button-secondary button-nina" type="submit">{{trans('app.login')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
