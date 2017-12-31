@extends('layouts.app')
@section('title',trans('app.home'))
@section('content')
    @foreach($sections as $section)
        @if(view()->exists('partials.'.$section['name_en']))
            @include('partials.'.$section['name_en'])
        @endif
    @endforeach
@endsection

@section('scripts')
    <script type="text/javascript" src="{{asset('js/Chart.bundle.min.js')}}"></script>
    <script>
        $(function () {
            $('.chart').on('click', function () {
                var url=$(this).data('url');
                var type=$(this).data('chart');
                var name=$(this).text();
                $('#bar-chart').remove();
                $('.flot-chart').append('<canvas id="bar-chart" class="bar-chart" width="777" height="260"' +
                    ' style="direction: {{$dir}}; position: relative; left: 0px; top: 0px; width: 777px; height: 260px;"></canvas>');
                $.ajax({
                    type:'GET',
                    url:url,
                    data:{type:type},
                    success:function (data) {
                        console.log(data);
                        _bar_chart(data.dates,data.data,data.color,name);
                    }
                })
            })

        })
    </script>
@endsection
