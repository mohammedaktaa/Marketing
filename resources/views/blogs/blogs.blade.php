@extends('layouts.app')
@section('title',trans('app.blogs'))
@section('content')
    <section class="breadcrumbs-custom breadcrumbs-custom-svg" style="background: {{$style->value=='pink'?'linear-gradient(-39deg, #b91354 10%, #BE2546 40%)':'linear-gradient(-39deg, rgba(114,4,228,0.39) 10%, rgba(96,27,191,0.79) 40%)'}}">
        <div class="shell">
            <p class="heading-1 breadcrumbs-custom-title">{{trans('app.blogs')}}</p>
            <ul class="breadcrumbs-custom-path">
                <li class="  white"><a href="{{route('home')}}">{{trans('app.home')}}</a></li>
                <li class="  white"><a href="{{localizeURL('blogs')}}">{{trans('app.blogs')}}</a></li>
                <li class="active white">{{trans('app.modern_blogs')}}</li>
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
    <section class="section section-xl bg-gray-lighter">
        <!-- section wave-->
        <div class="section-wave" style="z-index: 999;">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-bigger">
            <div class="range range-ten range-50 range-sm-90 range-sm-center range-lg-justify">
                <div class="cell-sm-9 cell-md-6 blog-modern-main text-center">
                    <!-- Post modern-->
                    @foreach($blogs as $blog)
                        <article class="post-modern {{$blog->tag->name_en}}">
                            <div class="post-modern-aside">
                                <time datetime="2017"> {{$blog->created_at->format(' j F Y')}} {{trans('app.at')}} {{$blog->created_at->format('H:i:s')}} </time>
                                <figure class="post-modern-avatar-wrap"><img class="post-modern-avatar"
                                                                             src="{{$blog->user->image?asset(\App\User::IMAGE_File_PATH.$blog->user->image):asset('images/avatar.jpg')}}"
                                                                             alt="" width="108" height="108"/>
                                </figure>
                                <p class="post-modern-author"><a href="#">{{$blog->user->name}}</a></p>
                            </div>
                            <div class="post-modern-main"><a class="post-modern-image"
                                                             href="{{localizeURL("blogs/$blog->blog_id")}}"><img
                                            src="{{$blog->image?asset(\App\Models\Blog::IMAGE_File_PATH.$blog->image):asset('images/blog-01-868x640.jpg')}}" alt="" width="870" height="580"/></a>
                                <div class="post-modern-body">
                                    <h5 class="post-modern-title"><a
                                                href="{{localizeURL("blogs/$blog->blog_id")}}">{{$blog->title}}</a></h5>
                                    <p>{!! $blog->content !!}</p>
                                    <div class="post-modern-footer">
                                        <div>
                                            <ul class="post-modern-meta">
                                                <li><span class="icon mdi mdi-tag"></span><a
                                                            href="#">{{$blog->tag['name_'.$lang]}}</a></li>
                                            </ul>
                                        </div>
                                        <div>
                                            <ul class="post-modern-info">
                                                <li>
                                                    <a href="single-post.html">
                                                        <span class="icon mdi mdi-comment"></span><span>{{$blog->comment?$blog->comment->count():'0'}}</span>
                                                    </a>
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
                    {{--<div class="blog-aside-item">--}}
                        {{--<h6>{{trans('app.about_us')}}</h6>--}}
                        {{--<p>فكرة , شغف ثم هدف . هذا ما قد نصف به متجر انكوم , فمنذ اللحظة الأولى لتأسيس انكوم كانت الفكرة--}}
                            {{--هي إعادة تعريف مبيعات الجملة الخاصة بالأفراد و خلق بيئة تجارية موثوقة بأسعار من الواقع , بدأ--}}
                            {{--الشغف في تنفيذ الفكرة فكان الهدف انكوم .</p>--}}
                    {{--</div>--}}
                    <div class="blog-aside-item">
                        <h6>{{trans('app.tags')}}</h6>
                        <ul class="list-marked list-marked-secondary">
                            <li class="tags" data-tag="all">{{trans('app.all')}}</li>
                            @foreach($tags as $tag)
                                <li class="tags" data-tag="{{$tag->name_en}}" style="color: #ff2558 !important;cursor: pointer !important;">{{$tag['name_'.$lang]}}</li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="blog-aside-item">
                        <h6>{{trans('app.recent_blog_posts')}}</h6>
                        <!-- Post minimal-->
                        @foreach($blog4 as $item)
                            <article class="post-minimal">
                                <p class="post-minimal-title"><a href="{{localizeURL('blogs/'.$item->blog_id)}}">{{$item->title}}</a></p>
                                <time class="post-minimal-time"
                                      datetime="2017">{{$item->created_at->format(' j F Y')}} {{trans('app.at')}} {{$item->created_at->format('H:i:s')}}</time>
                            </article>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        $(function () {
            $('.tags').click(function () {
                var tag=$(this).data('tag');
                switch (tag) {
                    case 'all': {
                        $('.Buissnes').fadeIn(1000);
                        $('.Music').fadeIn(1000);
                        $('.Cultural').fadeIn(1000);
                        $('.Fun').fadeIn(1000);
                        break;
                    }
                    case 'Buissnes': {
                        $('.Buissnes').fadeIn(1000);
                        $('.Music').fadeOut(1000);
                        $('.Cultural').fadeOut(1000);
                        $('.Fun').fadeOut(1000);
                        break;
                    }
                    case 'Music': {
                        $('.Buissnes').fadeOut(1000);
                        $('.Music').fadeIn(1000);
                        $('.Cultural').fadeOut(1000);
                        $('.Fun').fadeOut(1000);
                        break;
                    }
                    case 'Cultural': {
                        $('.Buissnes').fadeOut(1000);
                        $('.Music').fadeOut(1000);
                        $('.Cultural').fadeIn(1000);
                        $('.Fun').fadeOut(1000);
                        break;
                    }
                    case 'Fun': {
                        $('.Buissnes').fadeOut(1000);
                        $('.Music').fadeOut(1000);
                        $('.Cultural').fadeOut(1000);
                        $('.Fun').fadeIn(1000);
                        break;
                    }
                    default:
                        console.log('failed');
                }
            })
        })
    </script>
    @endsection