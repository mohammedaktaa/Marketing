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
                <div class="d3-chart-wrap">
                    <div class="d3-chart" id="line-chart" style="width:100%; height: 420px;"></div>
                </div>
            </div>
        </div>
    </div>
</section>