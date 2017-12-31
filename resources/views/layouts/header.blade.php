<header class="section page-header breadcrumbs-custom-wrap bg-gradient bg-secondary-2">
    <!-- RD Navbar-->
    <div class="rd-navbar-wrap rd-navbar-default">
        <nav class="rd-navbar" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
             data-md-layout="rd-navbar-fullwidth" data-md-device-layout="rd-navbar-fixed"
             data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-md-stick-up-offset="2px"
             data-lg-stick-up-offset="2px" data-stick-up="true" data-sm-stick-up="true" data-md-stick-up="true"
             data-lg-stick-up="true" style="">
            <div class="rd-navbar-inner">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                    <!-- RD Navbar Toggle-->
                    <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                    <!-- RD Navbar Brand-->
                    <div class="rd-navbar-brand"><a class="brand-name" href="index.html">
                            <img class="logo-default"
                                 src="{{url('images/logo.png')}}"
                                 alt="" width="128"
                                 height="61"/>
                            <img class="logo-inverse"
                                 src="{{url('images/logo.png')}}" alt=""
                                 width="128" height="61"/></a></div>
                </div>
                <div class="rd-navbar-aside-right">
                    <div class="rd-navbar-nav-wrap">
                        <!-- RD Navbar Nav-->
                        <ul class="rd-navbar-nav">
                            @foreach($menuItems as $menuItem )

                                @if($menuItem->type=='V')
                                    <li><a href="{{$menuItem->url}}" style="font-family: 'messeri'">{{$menuItem['name_'.$lang]}}</a>
                                        @if($menuItem->children->count())
                                            <ul class="rd-navbar-dropdown">
                                                @foreach($menuItem->children as $child)
                                                    <li><a href="{{$child->url}}" style="font-family: 'messeri'">{{$child['name_'.$lang]}}</a></li>
                                                @endforeach
                                            </ul>
                                        @endif
                                    </li>
                                @endif
                                @if(($menuItem->type=='I'||$menuItem->type=='E') && $menuItem->parent_id==null)
                                    <li><a href="{{$menuItem->url}}" style="font-family: 'messeri'">{{$menuItem['name_'.$lang]}}</a></li>
                                @endif
                            @endforeach
                            <li><a href="#"><span class="fa fa-user fa-2x"></span></a>
                                <ul class="rd-navbar-dropdown"
                                    style="{{$dir=='rtl'?'right:auto !important;left:0':''}}">
                                    @if(!Auth::check())
                                        <li style="font-family: 'messeri'">
                                            <form class="form-horizontal ajax-form" action="{{route('login')}}"
                                                  method="post"
                                                  enctype="multipart/form-data" style="font-family: 'messeri'">
                                                {{csrf_field()}}
                                                <div class="context-dark icon-primary">{{trans('app.login')}}</div>
                                                <div class="form-group">
                                                    <input class="form-control" name="email" type="email"
                                                           placeholder="{{trans('app.email')}}">
                                                </div>
                                                <div class="form-group">
                                                    <input class="form-control" name="password" type="password"
                                                           placeholder="{{trans('app.password')}}">
                                                </div>
                                                <div class="text-center">
                                                    <a href="{{localizeURL('register')}}"
                                                       class="text-center">{{trans('app.new_sign_up')}}</a>
                                                </div>
                                                <div class="form-group center" style="text-align: center">
                                                    <button class="btn btn-primary"
                                                            type="submit">{{trans('app.submit')}}</button>
                                                </div>
                                            </form>
                                        </li>
                                    @else
                                        <div class="row " style="margin-{{$dir=='rtl'?'right':'left'}}:20px;font-family: 'messeri' " >
                                            <div class='col-xs-12'>
                                                <div class="row"
                                                     style="color: rgba(51,51,51,0.52)">{{trans('profile.name')}}
                                                    <br>
                                                    <b>{{strtoupper(Auth::user()->name)}}</b></div>
                                                <div class="row"
                                                     style="color: rgba(51,51,51,0.52)">{{trans('profile.email')}}
                                                    <b>{{Auth::user()->email}}</b></div>
                                                <div class="row"
                                                     style="color: rgba(51,51,51,0.52)">
                                                    <b><a href="{{localizeURL('insert')}}">{{trans('app.insert_code')}}</a></b>
                                                </div>
                                                @if(Auth::user()->isAdmin())
                                                    <div class="row"
                                                         style="color: rgba(51,51,51,0.52)">
                                                        <b><a href="{{route('admin-home')}}">{{trans('app.admin_panel')}}</a></b>
                                                    </div>
                                                @endif
                                                <div class="row"
                                                     style="color: rgba(51,51,51,0.52)">{{trans('profile.account_money')}}
                                                    <b id="money">{{Auth::user()->account_money}}</b></div>
                                                <div class="row text-center"><a class="btn btn-danger"
                                                                                href="{{localizeURL('logout')}}">{{trans('app.logout')}}</a>
                                                </div>
                                                <br>
                                            </div>
                                        </div>
                                    @endif
                                </ul>
                            </li>
                        </ul>
                    </div>
                    @if(Auth::check())
                        <div class="rd-navbar-nav-wrap">
                            <!-- RD Navbar Nav-->
                            <ul class="rd-navbar-nav">
                                <li><a href="#"><span class="fa fa-bell fa-2x">  <em class="btn-danger badge"
                                                                                     style="background-color: #ff353e !important;">
                                        {{Auth::check()?count(Auth::user()->unreadNotifications):'0'}}
                                    </em></span></a>
                                    @if(Auth::check())
                                        @if(Auth::user()->unreadNotifications)
                                            <ul class="rd-navbar-dropdown"
                                                style="{{$dir=='rtl'?'right:auto !important;left:0':'0'}}">
                                                @foreach(Auth::user()->unreadNotifications as $notification)
                                                    {{$notification->markAsRead()}}
                                                    <form method="POST" action="{{localizeURL('request-accept')}}"
                                                          enctype="multipart/form-data">
                                                        {{csrf_field()}}
                                                        <li>
                                                            <a href="#" data-id="{{$notification->data['id']}}" style="font-family: 'messeri'"
                                                               onclick="_accept('{{$notification->data['id']}}','{{$notification->data['price']}}')">{{--{{trans('app.request_replay')}}--}}{!! $notification->data['title'] !!}</a>
                                                            {{--                                                    <em>{{$notification->data['date']['date']}}</em>--}}
                                                        </li>
                                                    </form>
                                                @endforeach
                                            </ul>
                                        @endif
                                    @endif
                                </li>
                            </ul>
                        </div>
                    @endif
                    <div class="rd-navbar-nav-wrap">
                        <!-- RD Navbar Nav-->
                        <ul class="rd-navbar-nav">
                            <li><a href="#"><span class="icon icon-location fa-2x">   </span></a>
                                <ul class="rd-navbar-dropdown"
                                    style=" {{$dir=='rtl'?'right:auto !important;left:0;text-align: left':'0'}} "
                                    dir="ltr">
                                    @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                                        <li><a href="{{LaravelLocalization::getLocalizedURL($localeCode)}}"
                                               hreflang="{{$localeCode}}" style="font-family: 'messeri'">
                                                <img src="{{asset('images/icons/'.$localeCode.'.png')}}">
                                                {{ $properties['native'] }}
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="rd-navbar-aside-right-inner">
                        <div class="rd-navbar-shop"><a class="rd-navbar-shop-icon mdi mdi-cart"
                                                       href="{{localizeURL('shopping-cart')}}"><span
                                        id="cart-count">{{$cartCount }}</span></a></div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    @if(URL::current()==route('home'))
        @include('layouts.slider')
    @endif
</header>