@extends('layouts.app')
@section('title',$blog->title)
@section('content')
    <section class="breadcrumbs-custom breadcrumbs-custom-svg" style="background: {{$style->value=='pink'?'linear-gradient(-39deg, #b91354 10%, #BE2546 40%)':'linear-gradient(-39deg, rgba(114,4,228,0.39) 10%, rgba(96,27,191,0.79) 40%)'}}">
        <div class="shell">
            <p class="heading-1 breadcrumbs-custom-title">{{$blog->title}}</p>
            <ul class="breadcrumbs-custom-path">
                <li><a href="{{route('home')}}">{{trans('app.home')}}</a></li>
                <li><a href="#">{{trans('app.blogs')}}</a></li>
                <li class="active">{{$blog->title}}</li>
            </ul>
        </div>
        <div class="parallax-scene-js parallax-scene" data-scalar-x="5" data-scalar-y="10">
            <div class="layer-01">
                <div class="layer" data-depth="0.25"><img src="{{asset('images/parallax-scene-01-132x133.png')}}" alt="" width="132" height="133"/>
                </div>
            </div>
            <div class="layer-02">
                <div class="layer" data-depth=".55"><img src="{{asset('images/parallax-scene-02-186x208.png')}}" alt="" width="186" height="208"/>
                </div>
            </div>
            <div class="layer-03">
                <div class="layer" data-depth="0.1"><img src="{{asset('images/parallax-scene-03-108x120.png')}}" alt="" width="108" height="120"/>
                </div>
            </div>
            <div class="layer-04">
                <div class="layer" data-depth="0.25"><img src="{{asset('images/parallax-scene-04-124x145.png')}}" alt="" width="124" height="145"/>
                </div>
            </div>
            <div class="layer-05">
                <div class="layer" data-depth="0.15"><img src="{{asset('images/parallax-scene-05-100x101.png')}}" alt="" width="100" height="101"/>
                </div>
            </div>
            <div class="layer-06">
                <div class="layer" data-depth="0.65"><img src="{{asset('images/parallax-scene-06-240x243.png')}}" alt="" width="240" height="243"/>
                </div>
            </div>
        </div>
    </section>
    <section class="section section-lg bg-white">
        <!-- section wave-->
        <div class="section-wave" style="z-index: 999;">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell-wide">
            <div class="range range-xs-center">
                <div class="cell-md-10 cell-lg-8 cell-xl-6 sections-collapsable">
                    <article class="post-blog-article">
                        <p class="post-blog-article-title">{{$blog->title}}</p>
                        <ul class="post-blog-article-meta group-xl">
                            <li>
                                <div class="box-inline"><span
                                            class="icon icon-md icon-primary mdi mdi-account"></span>{{trans('app.by')}}
                                    <div><a href="#">محمد أكتع</a></div>
                                </div>
                            </li>
                            <li>
                                <div class="box-inline"><span
                                            class="icon icon-md icon-primary mdi mdi-calendar-clock"></span>
                                    <time datetime="2017">{{$blog->created_at->format(' j F Y')}} {{trans('app.at')}} {{$blog->created_at->format('H:i:s')}}</time>
                                </div>
                            </li>
                        </ul>
                        <img src="{{asset("images/$blog->image")}}" alt="" width="870" height="580"/>
                        <p>{{$blog->content}}</p>
                        {{--<article class="quote-primary">--}}
                        {{--<svg class="quote-primary-mark" version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="35px" height="25px" viewbox="0 0 35 25">--}}
                        {{--<path d="M27.461,10.206h7.5v15h-15v-15L25,0.127h7.5L27.461,10.206z M7.539,10.206h7.5v15h-15v-15L4.961,0.127h7.5                            L7.539,10.206z"></path>--}}
                        {{--</svg>--}}
                        {{--<div class="quote-primary-text">--}}
                        {{--<p>If you mirror the opinion and language of your interlocutor, you follow the common social norm, but you also paralyze the discussion and miss a moment of fun. Instead, we recommend you to practice the art of disruption and move the dialogue forward using one of the methods described in this article.</p>--}}
                        {{--</div>--}}
                        {{--<p class="quote-primary-meta"><span>by</span><span class="cite">Ronald Chen</span></p>--}}
                        {{--</article>--}}
                        {{--<p>An even better way to break the boring conversation mirror is to skip over the expected response and go somewhere next-level. Even if your answer won’t concern the topic of the initial question, it will push the conversation forward. Don’t be afraid to go ahead and be bold. Upend the dinner table conversation! Turn small talk into big ideas at the next summer wedding reception you’re forced to attend! You never know which ideas will be worth spreading next and maybe breaking the ice of a small talk will end in amazing conversation.</p>--}}
                        {{--<div class="group-md group-middle button-group"><a class="button button-icon-alternate button-icon-left button-sm button-facebook" href="#"><span class="icon mdi mdi-facebook"></span>Facebook</a><a class="button button-icon-alternate button-icon-left button-sm button-twitter" href="#"><span class="icon mdi mdi-twitter"></span>Twitter</a><a class="button button-icon-alternate button-icon-left button-sm button-google" href="#"><span class="icon mdi mdi-google"></span>Google</a></div>--}}
                    </article>
                    {{--{{dd($blog)}}--}}
                    @if($blog->comment)
                        <div class="section-md">
                            <p class="h3-alternate">{{trans('app.comments')}}</p>
                            <div class="comment-group">
                                <!-- Comment-->
                                @foreach($blog->comment as $item)
                                    <article class="comment">
                                        <div class="comment-avatar"><img src="{{asset('images/m_aktaa.jpg')}}"
                                                                         alt="" width="80"
                                                                         height="80"/>
                                        </div>
                                        <div class="comment-body">
                                            <div class="comment-header">
                                                <h3 class="comment-title">{{$item->first_name}} {{$item->last_name}}</h3>
                                                <time class="comment-time" datetime="2017">2 days ago</time>
                                            </div>
                                            <div class="comment-text">
                                                <p>{{$item->content}}</p>
                                            </div>
                                            <div class="comment-footer"><a class="comment-link-reply" data-id=""
                                                                           href="#">{{trans('app.reply')}}</a>
                                            </div>
                                        </div>
                                    </article>
                                @endforeach
                            </div>
                        </div>
                    @endif
                    <div class="section-lg">
                        <!-- RD Mailform-->
                        <form method="post" action="{{localizeURL('blog/comment')}}" enctype="multipart/form-data"
                              data-id="{{$blog->blog_id}}">
                            {{csrf_field()}}
                            <div class="range range-20">
                                <div class="cell-xs-12">
                                    <div class="form-wrap form-wrap-validation">
                                        <label class="form-label-outside"
                                               for="form-comment-message">{{trans('app.content')}}</label>
                                        <textarea class="form-input" id="form-comment-message" name="content"
                                                  data-constraints="@Required"></textarea>
                                    </div>
                                </div>
                                <div class="cell-xs-12 offset-custom-1">
                                    <div class="form-button">
                                        <button class="button button-secondary button-nina"
                                                type="submit">{{trans('app.send_comment')}}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        $(function () {
            $('form').on('submit', function (e) {
                e.preventDefault();
                var id = $(this).data('id');
                var form = $(this).serialize();
                {{--@if (!Auth::check())--}}
                {{--_notifyMsg('danger','{{trans('app.error_comment')}}', 'right');--}}
                {{--_notifyMsg('success','', 'right');--}}
                {{--SEMICOLON.widget.notifications($('<div id="" data-notify-position="top-right" data-notify-type="danger" data-notify-msg="<i class=\'icon-info-sign\'></i>  ' + '{{trans('app.error_comment')}}' + '"></div>'));--}}
                {{--console.log('not Auth');--}}
                {{--@else--}}
                $.ajax({
                    type: 'POST',
                    url: $(this).attr('action') + '/' + id,
                    data: form,
                    success: function () {
                        console.log('success')
                    }
                });
                {{--@endif--}}

            })
        })
    </script>
@endsection