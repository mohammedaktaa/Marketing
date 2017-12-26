@extends('layouts.app')
@section('title',trans('app.insert_code'))
@section('content')
    <section class="section section-lg bg-white text-center">
        <!-- section wave-->
        <div class="section-wave">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell">
            <div class="range range-xs-center">
                <div class="cell-sm-8 cell-md-6 cell-lg-4">
                <h3>{{trans('app.insert_code')}}</h3>
                    <!-- RD Mailform-->
                    <form class="rd-mailform" method="post" action="{{localizeURL('insert')}}">
                        {{csrf_field()}}
                        <div class="form-wrap form-wrap-validation">
                            <input class="form-input" id="forms-code" type="text" name="number" >
                            <label class="form-label" for="forms-code">{{trans('app.number')}}</label>
                        </div>
                        <div class="form-button">
                            <button class="button button-block button-secondary button-nina" type="submit">{{trans('app.submit')}}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        $(function () {
            $('form').on('submit',function (e) {
                e.preventDefault();
                var url=$(this).attr('action');
                var form=$(this).serialize();
                $.ajax({
                    type:'POST',
                    url:url,
                    data:form,
                    success:function (data) {
                        $('#money').text(data.money);
                        swal({
                            title: account +data.money,
                            type: 'success',
                            confirmButtonColor: "#4CDC80",
                            confirmButtonText: okay
                        });
                    }
                })
            })
        })
    </script>
    @endsection