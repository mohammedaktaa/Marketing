<header class="section page-header breadcrumbs-custom-wrap bg-gradient bg-secondary-2">
    <!-- RD Navbar-->
    <div class="rd-navbar-wrap rd-navbar-default">
        <nav class="rd-navbar" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
             data-md-layout="rd-navbar-fullwidth" data-md-device-layout="rd-navbar-fixed"
             data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-md-stick-up-offset="2px"
             data-lg-stick-up-offset="2px" data-stick-up="true" data-sm-stick-up="true" data-md-stick-up="true"
             data-lg-stick-up="true">
            <div class="rd-navbar-inner">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                    <!-- RD Navbar Toggle-->
                    <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                    <!-- RD Navbar Brand-->
                    <div class="rd-navbar-brand"><a class="brand-name" href="index.html"><img class="logo-default"
                                                                                              src="{{url('images/logo-default-128x61.png')}}"
                                                                                              alt="" width="128"
                                                                                              height="61"/><img
                                    class="logo-inverse" src="{{url('images/logo-inverse-128x61.png')}}" alt=""
                                    width="128" height="61"/></a></div>
                </div>
                <div class="rd-navbar-aside-right">
                    <div class="rd-navbar-nav-wrap">
                        <!-- RD Navbar Nav-->
                        <ul class="rd-navbar-nav">
                            @foreach($menuItems as $menuItem )

                                @if($menuItem->type=='V')
                                    <li><a href="{{$menuItem->url}}">{{$menuItem['name_'.$lang]}}</a>
                                        @if($menuItem->children->count())
                                            <ul class="rd-navbar-dropdown">
                                                @foreach($menuItem->children as $child)
                                                    <li><a href="{{$child->url}}">{{$child['name_'.$lang]}}</a></li>
                                                @endforeach
                                            </ul>
                                        @endif
                                    </li>
                                @endif
                                    @if(($menuItem->type=='I'||$menuItem->type=='E') && $menuItem->parent_id==null)
                                        <li><a href="{{$menuItem->url}}">{{$menuItem['name_'.$lang]}}</a></li>
                                    @endif
                            @endforeach
                            <li><a href="#"><span class="fa fa-user fa-2x"></span></a>
                                <ul class="rd-navbar-dropdown" style="{{$dir=='rtl'?'right:auto !important;left:0':''}}">
                                    @if(!Auth::check())
                                        <li>
                                            <form class="form-horizontal ajax-form" action="{{route('login')}}"
                                                  method="post"
                                                  enctype="multipart/form-data">
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
                                                    <a href="{{localizeURL('logout')}}"
                                                       class="text-center">{{trans('app.new_sign_up')}}</a>
                                                </div>
                                                <div class="form-group center" style="text-align: center">
                                                    <button class="btn btn-primary"
                                                            type="submit">{{trans('app.submit')}}</button>
                                                </div>
                                            </form>
                                        </li>
                                    @else
                                        <div class="row " style="margin-{{$dir=='rtl'?'right':'left'}}:20px ">
                                            <div class='col-xs-12'>
                                                <div class="row"
                                                     style="color: rgba(51,51,51,0.52)">{{trans('profile.name')}}
                                                    <br>
                                                    <b>{{strtoupper(Auth::user()->name)}}</b></div>
                                                <div class="row"
                                                     style="color: rgba(51,51,51,0.52)">{{trans('profile.email')}}
                                                    <b>{{Auth::user()->email}}</b></div>
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
                    <div class="rd-navbar-aside-right-inner">
                        <!-- RD Navbar Search-->
                        <div class="rd-navbar-search"><a class="rd-navbar-search-toggle"
                                                         data-rd-navbar-toggle=".rd-navbar-search"
                                                         href="#"><span></span></a>
                            <form class="rd-search" action="search-results.html"
                                  data-search-live="rd-search-results-live" method="GET">
                                <div class="form-wrap">
                                    <label class="form-label form-label"
                                           for="rd-navbar-search-form-input">Search...</label>
                                    <input class="rd-navbar-search-form-input form-input"
                                           id="rd-navbar-search-form-input" type="text" name="s" autocomplete="off">
                                    <div class="rd-search-results-live" id="rd-search-results-live"></div>
                                </div>
                                <button class="rd-search-form-submit mdi mdi-magnify"></button>
                            </form>
                        </div>
                        <div class="rd-navbar-shop"><a class="rd-navbar-shop-icon mdi mdi-cart"
                                                       href="shopping-cart.html"><span>2</span></a></div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    @foreach($sections as $section)
        @if($section['name_en']=='slider')
            @include('partials.'.$section['name_en'])
        @endif
    @endforeach
</header>