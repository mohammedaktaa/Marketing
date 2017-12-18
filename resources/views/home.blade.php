@extends('layouts.app')
@section('title',trans('app.home'))
@section('content')
    @foreach($sections as $section)
        @if(view()->exists('partials.'.$section['name_en']))
            @include('partials.'.$section['name_en'])
        @endif
    @endforeach
@endsection
