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
                <div class="cell-sm-9 cell-md-7 cell-lg-6 text-center">
                    <div class="range range-30">
                        <div class="cell-sm-6">
                            <article class="post-blog"><a class="post-blog-image" href="single-post.html"><img src="images/grid-blog-1-420x305.jpg" alt="" width="420" height="305"/></a>
                                <div class="post-blog-caption">
                                    <div class="post-blog-caption-header">
                                        <ul class="post-blog-tags">
                                            <li><a class="button-tags" href="single-post.html">business</a></li>
                                        </ul>
                                        <ul class="post-blog-meta">
                                            <li><span>by</span>&nbsp;<a href="about-me.html">Ronald Chen</a></li>
                                        </ul>
                                    </div>
                                    <div class="post-blog-caption-body">
                                        <h5><a class="post-blog-title" href="single-post.html">How to Turn Small Talk Into Smart Conversation</a></h5>
                                    </div>
                                    <div class="post-blog-caption-footer">
                                        <time datetime="2017">Feb 27, 2017 at 6:53 pm</time><a class="post-comment" href="single-post.html"><span class="icon icon-md-middle icon-gray-1 mdi mdi-comment"></span><span>3</span></a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="cell-sm-6">
                            <article class="post-blog"><a class="post-blog-image" href="image-post.html"><img src="images/blog-02-868x640.jpg" alt="" width="868" height="640"/></a>
                                <div class="post-blog-caption">
                                    <div class="post-blog-caption-header">
                                        <ul class="post-blog-tags">
                                            <li><a class="button-tags" href="image-post.html">Tips & Tricks</a></li>
                                        </ul>
                                        <ul class="post-blog-meta">
                                            <li><span>by</span>&nbsp;<a href="about-me.html">Ronald Chen</a></li>
                                        </ul>
                                    </div>
                                    <div class="post-blog-caption-body">
                                        <h5><a class="post-blog-title" href="image-post.html">The Top 5 Reasons Why ‘The Customer Is Always Right’ Is Wrong</a></h5>
                                    </div>
                                    <div class="post-blog-caption-footer">
                                        <time datetime="2017">Feb 27, 2017 at 6:53 pm</time><a class="post-comment" href="image-post.html"><span class="icon icon-md-middle icon-gray-1 mdi mdi-comment"></span><span>3</span></a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="cell-sm-6">
                            <article class="post-blog"><a class="post-blog-video" href="video-post.html">
                                    <figure><img src="images/grid-blog-2-420x305.jpg" alt="" width="420" height="305"/>
                                    </figure><span class="icon mdi mdi-play-circle-outline"></span></a>
                                <div class="post-blog-caption">
                                    <div class="post-blog-caption-header">
                                        <ul class="post-blog-tags">
                                            <li><a class="button-tags" href="video-post.html">business</a></li>
                                        </ul>
                                        <ul class="post-blog-meta">
                                            <li><span>by</span>&nbsp;<a href="about-me.html">Ronald Chen</a></li>
                                        </ul>
                                    </div>
                                    <div class="post-blog-caption-body">
                                        <h5><a class="post-blog-title" href="video-post.html">How to Improve Performance of Your Sales Managers</a></h5>
                                    </div>
                                    <div class="post-blog-caption-footer">
                                        <time datetime="2017">Feb 27, 2017 at 6:53 pm</time><a class="post-comment" href="video-post.html"><span class="icon icon-md-middle icon-gray-1 mdi mdi-comment"></span><span>3</span></a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="cell-sm-6">
                            <article class="post-blog"><a class="post-blog-quote" href="single-post.html">
                                    <p class="post-blog-quote-text">Success is the result of preparation, hard work, and learning from failure.</p></a>
                                <div class="post-blog-caption">
                                    <div class="post-blog-caption-header">
                                        <ul class="post-blog-tags">
                                            <li><a class="button-tags" href="single-post.html">Tips & Tricks</a></li>
                                        </ul>
                                        <ul class="post-blog-meta">
                                            <li><span>by</span>&nbsp;<a href="about-me.html">Ronald Chen</a></li>
                                        </ul>
                                    </div>
                                    <div class="post-blog-caption-body">
                                        <h5><a class="post-blog-title" href="single-post.html">7 Ways to Inspire Your Employees</a></h5>
                                    </div>
                                    <div class="post-blog-caption-footer">
                                        <time datetime="2017">Feb 27, 2017 at 6:53 pm</time><a class="post-comment" href="single-post.html"><span class="icon icon-md-middle icon-gray-1 mdi mdi-comment"></span><span>3</span></a>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div><a class="button button-default-outline button-nina button-block button-blog" href="#">Load more posts</a>
                    <ul class="pagination-custom">
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                    </ul>
                </div>
                <div class="cell-sm-9 cell-md-3 blog-aside">
                    <div class="blog-aside-item">
                        <h6>Search</h6>
                        <form class="rd-search rd-search-modern" action="search-results.html" method="GET">
                            <div class="form-wrap">
                                <input class="rd-search-input form-input" id="rd-search-input" type="text" name="s" autocomplete="off">
                                <label class="form-label form-label" for="rd-search-input">Search</label>
                            </div>
                            <button class="button mdi mdi-magnify" type="submit"></button>
                        </form>
                    </div>
                    <div class="blog-aside-item">
                        <h6>Archive</h6>
                        <ul class="list-marked list-marked-secondary">
                            <li><a href="#">January 2017</a></li>
                            <li><a href="#">February 2017</a></li>
                            <li><a href="#">March 2017</a></li>
                            <li><a href="#">April 2017</a></li>
                            <li><a href="#">May 2017</a></li>
                        </ul>
                    </div>
                    <div class="blog-aside-item">
                        <h6>About us</h6>
                        <p>Made to be used by anyone who is looking for a stunning multifunctional website, this template is a universal solution, which can be used already after being installed. It differs from other similar projects in everything - be it the initial concept or the final look.</p><a class="button button-xs button-default-outline button-nina" href="about-us.html">learn more</a>
                    </div>
                    <div class="blog-aside-item">
                        <h6>categories</h6>
                        <ul class="list-marked list-marked-secondary">
                            <li><a href="#">Business</a></li>
                            <li><a href="#">Tips & Tricks</a></li>
                            <li><a href="#">Reviews</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Marketing</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection