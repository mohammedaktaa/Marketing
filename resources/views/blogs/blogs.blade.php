@extends('layouts.app')
@section('title')
    {{trans('title')}}
@endsection
@section('content')
    <section class="section section-xl bg-gray-lighter">
        <!-- section wave-->
        <div class="section-wave">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-bigger">
            <div class="range range-ten range-50 range-sm-90 range-sm-center range-lg-justify">
                <div class="cell-sm-9 cell-md-6 blog-modern-main text-center">
                    <!-- Post modern-->
                    @foreach($blogs as $blog)
                        <article class="post-modern">
                            <div class="post-modern-aside">
                                <time datetime="2017"> {{$blog->created_at->format(' j F Y')}} {{trans('app.at')}} {{$blog->created_at->format('H:i:s')}} </time>
                                <figure class="post-modern-avatar-wrap"><img class="post-modern-avatar"
                                                                             src="{{asset("images/$blog->image")}}"
                                                                             alt="" width="108" height="108"/>
                                </figure>
                                <p class="post-modern-author"><a href="about-me.html">Ronald Chen </a></p>
                            </div>
                            <div class="post-modern-main"><a class="post-modern-image"
                                                             href="{{localizeURL("blogs/$blog->blog_id")}}"><img
                                            src="{{asset("images/$blog->image")}}" alt="" width="870" height="580"/></a>
                                <div class="post-modern-body">
                                    <h5 class="post-modern-title"><a
                                                href="{{localizeURL("blogs/$blog->blog_id")}}">{{$blog->title}}</a></h5>
                                    <p>{{$blog->content}}</p>
                                    <div class="post-modern-footer">
                                        <div>
                                            <ul class="post-modern-meta">
                                                <li><span class="icon mdi mdi-tag"></span><a
                                                            href="#">{{$blog->tag['name_'.$lang]}}</a></li>
                                            </ul>
                                        </div>
                                        <div>
                                            <ul class="post-modern-info">
                                                <li><span class="icon mdi mdi-eye"></span><span>193</span></li>
                                                <li><a href="single-post.html"><span
                                                                class="icon mdi mdi-comment"></span><span>3</span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    @endforeach
                    {{$blogs->links()}}
                </div>
                <div class="cell-sm-9 cell-md-4 cell-lg-3 blog-aside">
                    <div class="blog-aside-item">
                        <h6>{{trans('app.about_us')}}</h6>
                        <p>فكرة , شغف ثم هدف . هذا ما قد نصف به متجر انكوم , فمنذ اللحظة الأولى لتأسيس انكوم كانت الفكرة
                            هي إعادة تعريف مبيعات الجملة الخاصة بالأفراد و خلق بيئة تجارية موثوقة بأسعار من الواقع , بدأ
                            الشغف في تنفيذ الفكرة فكان الهدف انكوم .</p>
                    </div>
                    <div class="blog-aside-item">
                        <h6>{{trans('app.tags')}}</h6>
                        <ul class="list-marked list-marked-secondary">
                            @foreach($tags as $tag)
                                <li><a href="#">{{$tag['name_'.$lang]}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="blog-aside-item">
                        <h6>{{trans('app.recent_blog_posts')}}</h6>
                        <!-- Post minimal-->
                        @foreach($blog4 as $item)
                            <article class="post-minimal">
                                <p class="post-minimal-title"><a href="single-post.html">{{$item->title}}</a></p>
                                <time class="post-minimal-time"
                                      datetime="2017">{{$blog->created_at->format(' j F Y')}} {{trans('app.at')}} {{$blog->created_at->format('H:i:s')}}</time>
                            </article>
                        @endforeach
                    </div>
                    {{--<div class="blog-aside-item">--}}
                    {{--<!-- Facebook Feed-->--}}
                    {{--<div id="fb-root">--}}
                    {{--<div class="fb-page-responsive">--}}
                    {{--<div class="fb-page" data-href="https://www.facebook.com/TemplateMonster" data-tabs="timeline" data-height="540" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">--}}
                    {{--<div class="fb-xfbml-parse-ignore">--}}
                    {{--<blockquote cite="https://www.facebook.com/TemplateMonster"><a href="https://www.facebook.com/TemplateMonster">TemplateMonster</a></blockquote>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                </div>
            </div>
        </div>
    </section>
@endsection