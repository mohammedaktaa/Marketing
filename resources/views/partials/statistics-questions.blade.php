<section class="section section-variant-2 bg-gray-lighter" dir="ltr">
    <div class="shell shell-bigger">
        <div class="range range-ten range-50 range-sm-center range-lg-justify range-md-reverse">
            <div class="cell-sm-9 cell-md-5">
                <h3>{{trans('app.frequently_asked_questions')}}</h3>
                <div class="divider divider-default"></div>
                <!-- Bootstrap collapse-->
                <div class="panel-group panel-group-custom panel-group-corporate" id="accordion1" role="tablist" aria-multiselectable="false">
                    <!-- Bootstrap panel-->
                    @foreach($questions as $question)
                        @if($loop->first)
                        <div class="panel panel-custom panel-corporate">
                            <div class="panel-heading" id="accordion1Heading{{$question->question_id}}" role="tab">
                                <div class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion1" href="#accordion1Collapse{{$question->question_id}}" aria-controls="accordion1Collapse{{$question->question_id}}" aria-expanded="true">{{$question->text}}
                                        <div class="panel-arrow"></div></a>
                                </div>
                            </div>
                            <div class="panel-collapse collapse in" id="accordion1Collapse{{$question->question_id}}" role="tabpanel" aria-labelledby="accordion1Heading{{$question->question_id}}">
                                <div class="panel-body">
                                    <p>{{$question->answer}}</p>
                                </div>
                            </div>
                        </div>
                        @else
                            <div class="panel panel-custom panel-corporate">
                                <div class="panel-heading" id="accordion1Heading{{$question->question_id}}" role="tab">
                                    <div class="panel-title"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion1" href="#accordion1Collapse{{$question->question_id}}" aria-controls="accordion1Collapse{{$question->question_id}}">{{$question->text}}
                                            <div class="panel-arrow"></div></a>
                                    </div>
                                </div>
                                <div class="panel-collapse collapse" id="accordion1Collapse{{$question->question_id}}" role="tabpanel" aria-labelledby="accordion1Heading{{$question->question_id}}">
                                    <div class="panel-body">
                                        <p>{{$question->answer}}</p>
                                    </div>
                                </div>
                            </div>
                            @endif
                    @endforeach
                </div>
            </div>
            <div class="cell-sm-9 cell-md-5 cell-xl-4">
                <h3>{{trans('app.statistics')}}</h3>
                <div class="divider divider-default"></div>
                <div class="shell">
                    <canvas id="bar-chart" class="bar-chart" width="777" height="260"
                            style="direction: {{$dir}}; position: relative; left: 0px; top: 0px; width: 777px; height: 260px;"></canvas>
                </div>
                <ul class="list-items" style="list-style: none;display: inline-flex;margin: 25px;">
                    <li class="bg-pink chart" data-url="{{route('chart')}}" data-chart="customers" style="border-radius: 3px;margin: 0px 5px;color: #fff8f8;cursor: pointer !important;">{{trans('app.customers')}}</li>
                    <li class="bg-pink chart" data-url="{{route('chart')}}" data-chart="requests" style="border-radius: 3px;margin: 0px 5px;color: #fff8f8;cursor: pointer !important;">{{trans('app.requests')}}</li>
                    <li class="bg-pink chart" data-url="{{route('chart')}}" data-chart="page_printed" style="border-radius: 3px;margin: 0px 5px;color: #fff8f8;cursor: pointer !important;">{{trans('app.page_printed')}}</li>
                    <li class="bg-pink chart" data-url="{{route('chart')}}" data-chart="print_operations" style="border-radius: 3px;margin: 0px 5px;color: #fff8f8;cursor: pointer !important;">{{trans('app.print_operations')}}</li>
                    <li class="bg-pink chart" data-url="{{route('chart')}}" data-chart="planted_trees" style="border-radius: 3px;margin: 0px 5px;color: #fff8f8;cursor: pointer !important;">{{trans('app.planted_trees')}}</li>
                </ul>
            </div>
        </div>
    </div>
</section>