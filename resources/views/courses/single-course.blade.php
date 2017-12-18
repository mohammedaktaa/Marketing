@extends('layouts.app')
@section('title')
    {{trans('title')}}
@endsection
@section('content')
    <section class="section section-lg bg-white">
        <!-- section wave-->
        <div class="section-wave">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell-wide">
            <div class="range range-xs-center">
                <div class="cell-md-10 cell-lg-8 cell-xl-6 sections-collapsable">
                    <article class="post-blog-article">
                        <p class="post-blog-article-title">How to Turn Small Talk Into Smart <br class="veil reveal-md-block">Conversation</p>
                        <ul class="post-blog-article-meta group-xl">
                            <li>
                                <div class="box-inline"><span class="icon icon-md icon-primary mdi mdi-account"></span>by
                                    <div><a href="#">Ronald Chen</a></div>
                                </div>
                            </li>
                            <li>
                                <div class="box-inline"><span class="icon icon-md icon-primary mdi mdi-calendar-clock"></span>
                                    <time datetime="2017">Feb, 27 2017 at 5:47 pm</time>
                                </div>
                            </li>
                        </ul>
                        <p class="big">Imagine almost any situation where two or more people are gathered—a wedding reception or a job interview. What do these situations have in common? Almost all of them involve people trying to talk with each other. But in these very moments where a conversation would enhance an encounter, we often fall short.</p><img src="images/blog-03-870x580.jpg" alt="" width="870" height="580"/>
                        <p>When small talk stalls out, it’s often due to a phenomenon we call “mirroring.” In our attempts to be polite, we often answer people’s questions directly, repeat their observations, or just blandly agree with whatever they say. Such an approach can kill your conversation in the beginning. When you “break the mirror”, you give your interlocutor a chance to move forward in your small talk.</p>
                        <p>People also tend to do a passable job at talking. We stagger through our romantic, professional and social worlds with the goal merely of not crashing, never considering that we might soar. We go home sweaty and puffy without realizing that small talks are keys to opening greater conversations. In this post, we would like to show you how you can change this. For example, you can ask open-ended questions. Aim for questions that invite people to tell stories, rather than give bland, one-word answers.</p>
                        <article class="quote-primary">
                            <svg class="quote-primary-mark" version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="35px" height="25px" viewbox="0 0 35 25">
                                <path d="M27.461,10.206h7.5v15h-15v-15L25,0.127h7.5L27.461,10.206z M7.539,10.206h7.5v15h-15v-15L4.961,0.127h7.5                            L7.539,10.206z"></path>
                            </svg>
                            <div class="quote-primary-text">
                                <p>If you mirror the opinion and language of your interlocutor, you follow the common social norm, but you also paralyze the discussion and miss a moment of fun. Instead, we recommend you to practice the art of disruption and move the dialogue forward using one of the methods described in this article.</p>
                            </div>
                            <p class="quote-primary-meta"><span>by</span><span class="cite">Ronald Chen</span></p>
                        </article>
                        <p>An even better way to break the boring conversation mirror is to skip over the expected response and go somewhere next-level. Even if your answer won’t concern the topic of the initial question, it will push the conversation forward. Don’t be afraid to go ahead and be bold. Upend the dinner table conversation! Turn small talk into big ideas at the next summer wedding reception you’re forced to attend! You never know which ideas will be worth spreading next and maybe breaking the ice of a small talk will end in amazing conversation.</p>
                        <div class="group-md group-middle button-group"><a class="button button-icon-alternate button-icon-left button-sm button-facebook" href="#"><span class="icon mdi mdi-facebook"></span>Facebook</a><a class="button button-icon-alternate button-icon-left button-sm button-twitter" href="#"><span class="icon mdi mdi-twitter"></span>Twitter</a><a class="button button-icon-alternate button-icon-left button-sm button-google" href="#"><span class="icon mdi mdi-google"></span>Google</a></div>
                    </article>
                    <div class="section-md">
                        <p class="h3-alternate">Comments</p>
                        <div class="comment-group">
                            <!-- Comment-->
                            <article class="comment">
                                <div class="comment-avatar"><img src="images/user-1-80x80.jpg" alt="" width="80" height="80"/>
                                </div>
                                <div class="comment-body">
                                    <div class="comment-header">
                                        <p class="comment-title">Catherine Payne</p>
                                        <time class="comment-time" datetime="2017">2 days ago</time>
                                    </div>
                                    <div class="comment-text">
                                        <p>Thank you for such an amazing and informative article! It’s useful to know how to continue small talk and eventually make it into a great conversation.</p>
                                    </div>
                                    <div class="comment-footer"><a class="comment-link-reply" href="#">Reply</a></div>
                                </div>
                            </article>
                            <div class="comment-group">
                                <!-- Comment-->
                                <article class="comment">
                                    <div class="comment-avatar"><img src="images/user-2-80x80.jpg" alt="" width="80" height="80"/>
                                    </div>
                                    <div class="comment-body">
                                        <div class="comment-header">
                                            <p class="comment-title">Ronald Chen</p>
                                            <time class="comment-time" datetime="2017">2 days ago</time><span class="comment-reply">Catherine Payne</span>
                                        </div>
                                        <div class="comment-text">
                                            <p>Thank you for your comment! I will publish more tips on social communication as well as some useful negotiation tricks so stay tuned!</p>
                                        </div>
                                        <div class="comment-footer"><a class="comment-link-reply" href="#">Reply</a></div>
                                    </div>
                                </article>
                            </div>
                            <!-- Comment-->
                            <article class="comment">
                                <div class="comment-avatar"><img src="images/user-3-80x80.jpg" alt="" width="80" height="80"/>
                                </div>
                                <div class="comment-body">
                                    <div class="comment-header">
                                        <p class="comment-title">Philip Bowman</p>
                                        <time class="comment-time" datetime="2017">2 days ago</time>
                                    </div>
                                    <div class="comment-text">
                                        <p>Your tips helped me change my attitude to small talk, and I’m not avoiding them anymore. I hope to see more of such posts here in the future.</p>
                                    </div>
                                    <div class="comment-footer"><a class="comment-link-reply" href="#">Reply</a></div>
                                </div>
                            </article>
                        </div>
                    </div>
                    <div class="section-lg">
                        <p class="h3-alternate">Send a Comment</p>
                        <!-- RD Mailform-->
                        <form class="rd-mailform" data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php">
                            <div class="range range-20">
                                <div class="cell-sm-6">
                                    <div class="form-wrap form-wrap-validation">
                                        <label class="form-label-outside" for="form-comment-name">First name</label>
                                        <input class="form-input" id="form-comment-name" type="text" name="name" data-constraints="@Required">
                                    </div>
                                </div>
                                <div class="cell-sm-6">
                                    <div class="form-wrap form-wrap-validation">
                                        <label class="form-label-outside" for="form-comment-last-name">Last name</label>
                                        <input class="form-input" id="form-comment-last-name" type="text" name="last-name" data-constraints="@Required">
                                    </div>
                                </div>
                                <div class="cell-sm-6">
                                    <div class="form-wrap form-wrap-validation">
                                        <label class="form-label-outside" for="form-comment-email">E-mail</label>
                                        <input class="form-input" id="form-comment-email" type="email" name="email" data-constraints="@Email @Required">
                                    </div>
                                </div>
                                <div class="cell-sm-6">
                                    <div class="form-wrap form-wrap-validation">
                                        <label class="form-label-outside" for="form-comment-phone">Phone</label>
                                        <input class="form-input" id="form-comment-phone" type="text" name="phone" data-constraints="@Numeric @Required">
                                    </div>
                                </div>
                                <div class="cell-xs-12">
                                    <div class="form-wrap form-wrap-validation">
                                        <label class="form-label-outside" for="form-comment-message">Message</label>
                                        <textarea class="form-input" id="form-comment-message" name="message" data-constraints="@Required"></textarea>
                                    </div>
                                </div>
                                <div class="cell-xs-12 offset-custom-1">
                                    <div class="form-button">
                                        <button class="button button-secondary button-nina" type="submit">send comment</button>
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