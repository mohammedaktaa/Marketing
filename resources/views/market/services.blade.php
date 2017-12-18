@extends('layouts.app')
@section('title')
    {{trans('title')}}
@endsection
@section('content')
    <section class="section section-lg bg-gray-lighter text-center">
        <!-- section wave-->
        <div class="section-wave">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-wide">
            <h3>product catalog</h3>
            <div class="divider divider-default"></div>
            <div class="range range-sm range-shop">
                <div class="cell-lg-9">
                    <div class="range range-70 text-left">
                        <div class="cell-sm-6 cell-md-4">
                            <figure class="block-with-details book-info">
                                <div class="perspective">
                                    <div class="book" data-book="book-2">
                                        <div class="cover">
                                            <div class="front"></div>
                                            <div class="inner inner-left"></div>
                                        </div>
                                        <div class="inner inner-right"></div>
                                    </div>
                                </div>
                                <div class="figcaption">
                                    <h5 class="book-title"><a href="product-page.html">The Art of Leadership</a></h5>
                                    <div class="book-price">
                                        <div class="heading-6">$25.00</div>
                                    </div>
                                    <div class="book-button"><a class="button button-sm button-secondary button-nina" href="shopping-cart.html">add to cart</a></div>
                                    <div class="show-details">View Details</div>
                                </div>
                                <div class="details">
                                    <ul>
                                        <li>
                                            <h5>The Art of the<br class="veil reveal-xxl-block"> Leadership
                                            </h5>
                                            <p class="book-cite">William Armstrong</p>
                                            <p class="book-tag"><a href="#">Business</a> <span>,</span> <a href="#">Motivation</a> <span>,</span> <a href="#">Psychology</a>
                                            </p>
                                            <p class="book-content">The "management classic" that packs a huge amount of practical wisdom is now in paper. This clearly written guide details proven strategies for becoming a leader in any organization or group. Selected in hardcover as one of the Best Business Books.</p>
                                        </li>
                                    </ul>
                                </div><span class="close-details"></span>
                            </figure>
                        </div>
                        <div class="cell-sm-6 cell-md-4">
                            <figure class="block-with-details book-info">
                                <div class="perspective">
                                    <div class="book" data-book="book-3">
                                        <div class="cover">
                                            <div class="front"></div>
                                            <div class="inner inner-left"></div>
                                        </div>
                                        <div class="inner inner-right"></div>
                                    </div>
                                </div>
                                <div class="figcaption">
                                    <h5 class="book-title"><a href="product-page.html">The Basics of Web Design</a></h5>
                                    <div class="book-price">
                                        <div class="heading-6">$21.00</div>
                                    </div>
                                    <div class="book-button"><a class="button button-sm button-secondary button-nina" href="shopping-cart.html">add to cart</a></div>
                                    <div class="show-details">View Details</div>
                                </div>
                                <div class="details">
                                    <ul>
                                        <li>
                                            <h5>The Basics of Web<br class="veil reveal-xxl-block"> Design
                                            </h5>
                                            <p class="book-cite">Jeremy Ramirez</p>
                                            <p class="book-tag"><a href="#">Design</a></p>
                                            <p class="book-content">Basics of Web Design is intended for use in a beginning web design or web development course. The text covers the basics that web designers need to develop their skills in XHTML and HTML5. You will also learn how to configure  color and text with CSS.</p>
                                        </li>
                                    </ul>
                                </div><span class="close-details"></span>
                            </figure>
                        </div>
                        <div class="cell-sm-6 cell-md-4">
                            <figure class="block-with-details book-info">
                                <div class="perspective">
                                    <div class="book" data-book="book-4">
                                        <div class="cover">
                                            <div class="front"></div>
                                            <div class="inner inner-left"></div>
                                        </div>
                                        <div class="inner inner-right"></div>
                                    </div>
                                </div>
                                <div class="figcaption">
                                    <h5 class="book-title"><a href="product-page.html">Grid Systems in Web Design</a></h5>
                                    <div class="book-price">
                                        <div class="heading-6">$29.00</div>
                                    </div>
                                    <div class="book-button"><a class="button button-sm button-secondary button-nina" href="shopping-cart.html">add to cart</a></div>
                                    <div class="show-details">View Details</div>
                                </div>
                                <div class="details">
                                    <ul>
                                        <li>
                                            <h5>Grid Systems in Web<br class="veil reveal-xxl-block"> Design
                                            </h5>
                                            <p class="book-cite">Ralph Stone</p>
                                            <p class="book-tag"><a href="#">Design</a></p>
                                            <p class="book-content">Grids enable you to build solid structure and form into your designs. This book will tell you why and how grid systems can be used to achieve the desired effect in web design. Learn more about the recommended ways to organize modules of your site.</p>
                                        </li>
                                    </ul>
                                </div><span class="close-details"></span>
                            </figure>
                        </div>
                        <div class="cell-sm-6 cell-md-4">
                            <figure class="block-with-details book-info">
                                <div class="perspective">
                                    <div class="book" data-book="book-1">
                                        <div class="cover">
                                            <div class="front"></div>
                                            <div class="inner inner-left"></div>
                                        </div>
                                        <div class="inner inner-right"></div>
                                    </div>
                                </div>
                                <div class="figcaption">
                                    <h5 class="book-title"><a href="product-page.html">Immutable Laws of Marketing</a></h5>
                                    <div class="book-price">
                                        <div class="heading-6">$29.00</div>
                                    </div>
                                    <div class="book-button"><a class="button button-sm button-secondary button-nina" href="shopping-cart.html">add to cart</a></div>
                                    <div class="show-details">View Details</div>
                                </div>
                                <div class="details">
                                    <ul>
                                        <li>
                                            <h5>Immutable Laws of Marketing</h5>
                                            <p class="book-cite">Joanne Schultz</p>
                                            <p class="book-tag"><a href="#">Marketing</a></p>
                                            <p class="book-content">In this book, written by a renowned marketing expert, you will find a compendium of twenty-two innovative rules for understanding and succeeding in the international marketplace. These valuable insights present a clear path to successful products.</p>
                                        </li>
                                    </ul>
                                </div><span class="close-details"></span>
                            </figure>
                        </div>
                        <div class="cell-sm-6 cell-md-4">
                            <figure class="block-with-details book-info">
                                <div class="perspective">
                                    <div class="book" data-book="book-5">
                                        <div class="cover">
                                            <div class="front"></div>
                                            <div class="inner inner-left"></div>
                                        </div>
                                        <div class="inner inner-right"></div>
                                    </div>
                                </div>
                                <div class="figcaption">
                                    <h5 class="book-title"><a href="product-page.html">Tools That Reveal Why Your Users Abandon Your Website</a></h5>
                                    <div class="book-price">
                                        <div class="heading-6">$29.00</div>
                                    </div>
                                    <div class="book-button"><a class="button button-sm button-secondary button-nina" href="shopping-cart.html">add to cart</a></div>
                                    <div class="show-details">View Details</div>
                                </div>
                                <div class="details">
                                    <ul>
                                        <li>
                                            <h5>Tools That Reveal Why Your Users Abandon Your Website</h5>
                                            <p class="book-cite">Joanne Schultz</p>
                                            <p class="book-tag"><a href="#">Marketing</a></p>
                                            <p class="book-content">Despite the steady traffic, visitors are still dropping off your site. Some bounce the second they get there, and others are almost purchasing your product before they leave. In this book, you can find out why it happens and how it can be changed.</p>
                                        </li>
                                    </ul>
                                </div><span class="close-details"></span>
                            </figure>
                        </div>
                        <div class="cell-sm-6 cell-md-4">
                            <figure class="block-with-details book-info">
                                <div class="perspective">
                                    <div class="book" data-book="book-6">
                                        <div class="cover">
                                            <div class="front"></div>
                                            <div class="inner inner-left"></div>
                                        </div>
                                        <div class="inner inner-right"></div>
                                    </div>
                                </div>
                                <div class="figcaption">
                                    <h5 class="book-title"><a href="product-page.html">Dangerous Side Effects of Bad Customer Service</a></h5>
                                    <div class="book-price">
                                        <div class="heading-6">$29.00</div>
                                    </div>
                                    <div class="book-button"><a class="button button-sm button-secondary button-nina" href="shopping-cart.html">add to cart</a></div>
                                    <div class="show-details">View Details</div>
                                </div>
                                <div class="details">
                                    <ul>
                                        <li>
                                            <h5>Dangerous Side Effects of Bad Customer Service</h5>
                                            <p class="book-cite">Jeremy Ramirez</p>
                                            <p class="book-tag"><a href="#">Strategy</a></p>
                                            <p class="book-content">Customer service is arguably the most important thing for your business to get right. This book reveals how you can improve customer service in your company without any unnecessary expenses and hiring new people.</p>
                                        </li>
                                    </ul>
                                </div><span class="close-details"></span>
                            </figure>
                        </div>
                    </div><a class="button-blog button button-default-outline button-nina" href="#">load more products</a><br>
                    <ul class="pagination-custom">
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                    </ul>
                </div>
                <!-- Shop Sidebar-->
                <div class="cell-lg-3 shop-aside text-left">
                    <div class="shop-aside-item">
                        <h6>subjects</h6>
                        <ul class="list-marked list-marked-secondary">
                            <li><a href="#">Business</a></li>
                            <li><a href="#">Design</a></li>
                            <li><a href="#">Coaching</a></li>
                            <li><a href="#">Management</a></li>
                            <li><a href="#">Marketing</a></li>
                        </ul>
                    </div>
                    <div class="shop-aside-item">
                        <h6>categories</h6>
                        <ul class="list-marked list-marked-secondary">
                            <li><a href="#">For Designers</a></li>
                            <li><a href="#">For Marketers </a></li>
                            <li><a href="#">For Managers</a></li>
                        </ul>
                    </div>
                    <div class="shop-aside-item">
                        <h6>twitter</h6>
                        <ul class="twitter list-twitter" data-twitter-username="templatemonster">
                            <li data-twitter-type="tweet">
                                <div class="unit unit-xs-horizontal">
                                    <div class="unit-left"><span class="mdi mdi-twitter twitter-icon icon-md-middle"></span></div>
                                    <div class="unit-body">
                                        <p data-tweet="text"></p>
                                        <time data-date="text" data-datetime="datetime" datetime="2017"></time>
                                    </div>
                                </div>
                            </li>
                            <li data-twitter-type="tweet">
                                <div class="unit unit-xs-horizontal">
                                    <div class="unit-left"><span class="mdi mdi-twitter twitter-icon icon-md-middle"></span></div>
                                    <div class="unit-body">
                                        <p data-tweet="text"></p>
                                        <time data-date="text" data-datetime="datetime" datetime="2017"></time>
                                    </div>
                                </div>
                            </li>
                            <li data-twitter-type="tweet">
                                <div class="unit unit-xs-horizontal">
                                    <div class="unit-left"><span class="mdi mdi-twitter twitter-icon icon-md-middle"></span></div>
                                    <div class="unit-body">
                                        <p data-tweet="text"></p>
                                        <time data-date="text" data-datetime="datetime" datetime="2017"></time>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection