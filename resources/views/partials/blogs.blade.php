<section class="section section-lg bg-gray-lighter text-center">
    <div class="shell-wide">
        <div class="range">
            <div class="cell-xs-12">
                <h3>{{trans('app.our_blog')}}</h3>
                <div class="divider divider-default"></div>
            </div>
        </div>
        <div class="range range-30 range-xs-center">
            @foreach($blogss as $blogs)
            <div class="cell-sm-6 cell-lg-5 cell-xl-6">
                <article class="post-blog-large">
                    <figure class="post-blog-large-image"><img src="{{$blogs->image?asset(\App\Models\Blog::IMAGE_File_PATH.$blogs->image):asset('images/blog-01-868x640.jpg')}}" alt="" width="868" height="640"/>
                    </figure>
                    <ul class="post-blog-meta">
                        <li><span>by</span>&nbsp;<a href="#">{{$blogs->user->name}}</a></li>
                        <li>
                            <time datetime="2017">{{$blogs->created_at->format('Y-m-d')}}</time>
                        </li>
                    </ul>
                    <div class="post-blog-large-caption">
                        <ul class="post-blog-tags">
                            <li><a class="button-tags" href="#">{{$blogs->tag['name_'.$lang]}}</a></li>
                        </ul><a class="post-blog-large-title" href="{{localizeURL('blogs/'.$blogs->blog_id)}}">{{$blogs->title}}<br class="veil reveal-sm"></a>
                        <p class="post-blog-large-text">{!! str_limit(strip_tags($blogs->content,"<u><i>"),300) !!}</p><a class="button button-xs button-secondary button-nina" href="{{localizeURL('blogs/'.$blogs->blog_id)}}">{{trans('app.continue_reading')}}</a>
                    </div>
                </article>
            </div>
                @endforeach
        </div><a class="button button-secondary button-nina" href="{{localizeURL('blogs')}}">{{trans('app.view_all_blog_posts')}}</a>
    </div>
</section>