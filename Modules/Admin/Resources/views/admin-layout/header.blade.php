<header class="topnavbar-wrapper">
    <!-- START Top Navbar-->
    <nav role="navigation" class="navbar topnavbar">
        <!-- START navbar header-->
        <div class="navbar-header">
            <a href="#" class="navbar-brand">
                <div class="brand-logo">
                    <img src="{{asset('images/logo.png')}}" alt="App Logo" class="img-responsive" style="width: 75%;">
                </div>
                <div class="brand-logo-collapsed">
                    <img src="{{asset('images/logo.png')}}" alt="App Logo" class="img-responsive"
                         style="margin-top: 22%">
                </div>
            </a>
        </div>
        <div class="nav-wrapper">
                <ul class="nav navbar-nav" style="">
                    <li>
                        <a id="side-open" href="#" data-trigger-resize="" data-toggle-state="aside-collapsed"
                           class="hidden-xs">
                            <em class="fa fa-navicon"></em>
                        </a>
                        <a href="#" data-toggle-state="aside-toggled" data-no-persist="true"
                           class="visible-xs sidebar-toggle">
                            <em class="fa fa-navicon"></em>
                        </a>
                    </li>
                </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <a href="{{route('table',['table'=>'requests'])}}">
                        <em class="fa fa-inbox"></em>
                    </a>
                </li>
                @if(Auth::check())
                    <li class="dropdown dropdown-list">
                        <a href="#" data-toggle="dropdown">
                            <em class="icon-user"></em>
                        </a>
                        <ul class="dropdown-menu animated flipInX">
                            <li>
                                <div class="list-group">
                                    <div class=""
                                         style="margin-top: 10px;text-align: center;">{{Auth::user()->name}}</div>
                                    <div class=""
                                         style="margin-top: 10px;text-align: center;">{{Auth::user()->email}}</div>
                                    <div class="topmargin-sm">
                                        <a href="{{localizeURL('logout')}}" class="btn btn-danger btn-block"
                                           style="margin: 10px 17px;width: 85%;"
                                           type="button">{{trans('app.logout')}}</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                @endif
                <li class="dropdown dropdown-list ">
                    <a href="#" data-toggle="dropdown">
                        <em class="icon-location"></em>
                    </a>
                    <ul class="dropdown-menu animated flipInX">
                        <li>
                            <div class="list-group">

                                @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                                    <a href="{{LaravelLocalization::getLocalizedURL($localeCode)}}"
                                       hreflang="{{$localeCode}}" class="list-group-item">
                                        <div class="media-box">
                                            <div class="pull-left">
                                                <img src="{{asset('images/icons/'.$localeCode.'.png')}}">
                                            </div>
                                            <div class="media-box-body clearfix">
                                                <p class="m0">{{ $properties['native'] }}</p>

                                            </div>
                                        </div>
                                    </a>
                                @endforeach

                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#" onClick="history.go(0)">
                        <em class="icon-refresh"></em>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</header>
{{--@if(Auth::check())--}}
    <aside class="aside">
        <div class="aside-inner">
            <nav data-sidebar-anyclick-close="" class="sidebar">
                <ul class="nav" style="">
                    <li class=" ">
                        <a href="{{route('dashboard')}}"
                           class="@if(URL::current()==route('dashboard')){{ 'current' }}@endif ">
                            <em class="fa fa-dashboard"></em> <span data-localize="sidebar.nav.element.DASHBOARD">{{trans('app.dashboard')}}</span>
                        </a>
                    </li>
                    <li class=" ">
                        <a href="#settings" title="Elements" data-toggle="collapse">
                            <em class="icon-settings"></em>
                            <span data-localize="sidebar.nav.element.SETTINGS">{{trans('app.settings')}}</span>
                        </a>
                        <ul id="settings" class="nav sidebar-subnav collapse" style="{{$dir=='rtl'?'margin-right:10px':'margin-left:10px'}}">
                            <li class="sidebar-subnav-header">{{trans('app.settings')}}</li>
                            <li class=" ">
                                <a href="{{route('table',['table'=>'products'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'products'])){{ 'current' }}@endif ">
                                    <em class="icon icon-basket"></em> <span>{{trans('app.products')}}</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="{{route('table',['table'=>'generals'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'generals'])){{ 'current' }}@endif ">
                                    <em class="fa fa-spinner"></em><span>{{trans('app.generals')}}</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="{{route('table',['table'=>'requests'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'requests'])){{ 'current' }}@endif ">
                                    <em class="fa fa-spinner"></em><span>{{trans('app.requests')}}</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="{{route('table',['table'=>'styles'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'styles'])){{ 'current' }}@endif ">
                                    <em class="fa fa-puzzle-piece"></em><span>{{trans('app.styles')}}</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="{{route('table',['table'=>'categories'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'categories'])){{ 'current' }}@endif ">
                                    <em class="fa fa-book"></em> <span>{{trans('app.categories')}}</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="{{route('table',['table'=>'pages'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'pages'])){{ 'current' }}@endif ">
                                    <em class="icon icon-docs"></em> <span>{{trans('app.pages')}}</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="{{route('table',['table'=>'menu-items'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'menu-items'])){{ 'current' }}@endif ">
                                    <em class="fa fa-th-list"></em> <span>{{trans('app.menu-items')}}</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="{{route('table',['table'=>'seos'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'seos'])){{ 'current' }}@endif ">
                                    <em class="icon icon-globe-alt"></em> <span>{{trans('app.seos')}}</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="{{route('table',['table'=>'counters'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'counters'])){{ 'current' }}@endif ">
                                    <em class="icon icon-speedometer"></em> <span>{{trans('app.counters')}}</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="{{route('table',['table'=>'clients-say'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'clients-say'])){{ 'current' }}@endif ">
                                    <em class="icon icon-speech"></em> <span>{{trans('app.clients-say')}}</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="{{route('table',['table'=>'sections'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'sections'])){{ 'current' }}@endif ">
                                    <em class="icon icon-layers"></em> <span>{{trans('app.sections')}}</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="{{route('table',['table'=>'tags'])}}"
                                   class="@if(URL::current()==route('table',['table'=>'tags'])){{ 'current' }}@endif ">
                                    <em class="icon icon-bookmark"></em> <span>{{trans('app.tags')}}</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'users'])}}"
                           class="@if(URL::current()==route('table',['table'=>'users'])){{ 'current' }}@endif ">
                            <em class="fa fa-group"></em> <span>{{trans('app.users')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'services'])}}"
                           class="@if(URL::current()==route('table',['table'=>'services'])){{ 'current' }}@endif ">
                            <em class="fa fa-server"></em> <span>{{trans('app.services')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'advantages'])}}"
                           class="@if(URL::current()==route('table',['table'=>'advantages'])){{ 'current' }}@endif ">
                            <em class="fa fa-briefcase"></em> <span>{{trans('app.advantages')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'courses'])}}"
                           class="@if(URL::current()==route('table',['table'=>'courses'])){{ 'current' }}@endif ">
                            <em class="fa fa-book"></em> <span>{{trans('app.courses')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'team'])}}"
                           class="@if(URL::current()==route('table',['table'=>'team'])){{ 'current' }}@endif ">
                            <em class="fa fa-users"></em> <span>{{trans('app.team')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'questions'])}}"
                           class="@if(URL::current()==route('table',['table'=>'questions'])){{ 'current' }}@endif ">
                            <em class="icon icon-question"></em> <span>{{trans('app.questions')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'cards'])}}"
                           class="@if(URL::current()==route('table',['table'=>'cards'])){{ 'current' }}@endif ">
                            <em class="fa fa-credit-card"></em> <span>{{trans('app.cards')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'coupons'])}}"
                           class="@if(URL::current()==route('table',['table'=>'coupons'])){{ 'current' }}@endif ">
                            <em class="icon-wallet"></em> <span>{{trans('app.coupons')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'sliders'])}}"
                           class="@if(URL::current()==route('table',['table'=>'sliders'])){{ 'current' }}@endif ">
                            <em class="icon-map"></em> <span>{{trans('app.sliders')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'manager'])}}"
                           class="@if(URL::current()==route('table',['table'=>'manager'])){{ 'current' }}@endif ">
                            <em class="icon-user"></em> <span>{{trans('app.about_manager')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'careers'])}}"
                           class="@if(URL::current()==route('table',['table'=>'careers'])){{ 'current' }}@endif ">
                            <em class="fa fa-sign-in"></em> <span>{{trans('app.careers')}}</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="{{route('table',['table'=>'privacy'])}}"
                           class="@if(URL::current()==route('table',['table'=>'privacy'])){{ 'current' }}@endif ">
                            <em class="icon-notebook"></em> <span>{{trans('app.privacy')}}</span>
                        </a>
                    </li>
                </ul>
                <!-- END sidebar nav-->
            </nav>
        </div>
    </aside>
{{--@endif--}}
