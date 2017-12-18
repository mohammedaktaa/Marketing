@extends('layouts.app')
@section('title')
    {{trans('title')}}
@endsection
@section('content')
    <section class="section section-lg bg-white text-center">
        <!-- section wave-->
        <div class="section-wave">
            <svg x="0px" y="0px" width="1920px" height="45px" viewbox="0 0 1920 45" preserveAspectRatio="none">
                <path d="M1920,0c-82.8,0-108.8,44.4-192,44.4c-78.8,0-116.5-43.7-192-43.7 c-77.1,0-115.9,44.4-192,44.4c-78.2,0-114.6-44.4-192-44.4c-78.4,0-115.3,44.4-192,44.4C883.1,45,841,0.6,768,0.6 C691,0.6,652.8,45,576,45C502.4,45,461.9,0.6,385,0.6C306.5,0.6,267.9,45,191,45C115.1,45,78,0.6,0,0.6V45h1920V0z"></path>
            </svg>
        </div>
        <div class="shell shell-wide">
            <h3>pricing</h3>
            <div class="divider divider-default"></div>
            <div class="range range-md range-50 range-xs-center">
                <!-- Pricing Box XL-->
                <div class="cell-sm-6 cell-lg-3">
                    <div class="pricing-box pricing-box-xl pricing-box-novi">
                        <div class="pricing-box-header">
                            <h4>basic</h4>
                        </div>
                        <div class="pricing-box-price">
                            <div class="heading-2"><sup>$</sup>49.00</div>
                        </div><a class="button button-sm button-secondary" href="#">order now</a>
                        <div class="pricing-box-body">
                            <ul class="pricing-box-list">
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-account-multiple"></span></div>
                                        <div class="unit-body"><span>1 User</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-harddisk"></span></div>
                                        <div class="unit-body"><span>10 GB of Disk Space</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-repeat"></span></div>
                                        <div class="unit-body"><span>500 GB Bandwidth</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-database"></span></div>
                                        <div class="unit-body"><span>1 Database</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md icon-primary mdi mdi-email-open"></span></div>
                                        <div class="unit-body"><span>2 Email Accounts</span></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Pricing Box XL-->
                <div class="cell-sm-6 cell-lg-3">
                    <div class="pricing-box pricing-box-xl pricing-box-novi">
                        <div class="pricing-box-header">
                            <h4>standard</h4>
                        </div>
                        <div class="pricing-box-price">
                            <div class="heading-2"><sup>$</sup>69.00</div>
                        </div><a class="button button-sm button-secondary" href="#">order now</a>
                        <div class="pricing-box-body">
                            <ul class="pricing-box-list">
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-account-multiple"></span></div>
                                        <div class="unit-body"><span>4 Users</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-harddisk"></span></div>
                                        <div class="unit-body"><span>50 GB of Disk Space</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-repeat"></span></div>
                                        <div class="unit-body"><span>800 GB Bandwidth</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-database"></span></div>
                                        <div class="unit-body"><span>2 Databases</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md icon-primary mdi mdi-email-open"></span></div>
                                        <div class="unit-body"><span>5 Email Accounts</span></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Pricing Box XL-->
                <div class="cell-sm-6 cell-lg-3">
                    <div class="pricing-box pricing-box-xl pricing-box-novi">
                        <div class="pricing-box-header">
                            <h4>gold</h4>
                        </div>
                        <div class="pricing-box-price">
                            <div class="heading-2"><sup>$</sup>88.00</div>
                        </div><a class="button button-sm button-secondary" href="#">order now</a>
                        <div class="pricing-box-body">
                            <ul class="pricing-box-list">
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-account-multiple"></span></div>
                                        <div class="unit-body"><span>8 Users</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-harddisk"></span></div>
                                        <div class="unit-body"><span>100 GB of Disk Space</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-repeat"></span></div>
                                        <div class="unit-body"><span>1 TB Bandwidth</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-database"></span></div>
                                        <div class="unit-body"><span>4 Databases</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md icon-primary mdi mdi-email-open"></span></div>
                                        <div class="unit-body"><span>10 Email Accounts</span></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Pricing Box XL-->
                <div class="cell-sm-6 cell-lg-3">
                    <div class="pricing-box pricing-box-xl pricing-box-novi">
                        <div class="pricing-box-header">
                            <h4>platinum</h4>
                        </div>
                        <div class="pricing-box-price">
                            <div class="heading-2"><sup>$</sup>108.00</div>
                        </div><a class="button button-sm button-secondary" href="#">order now</a>
                        <div class="pricing-box-body">
                            <ul class="pricing-box-list">
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-account-multiple"></span></div>
                                        <div class="unit-body"><span>16 Users</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-harddisk"></span></div>
                                        <div class="unit-body"><span>200 GB of Disk Space</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-repeat"></span></div>
                                        <div class="unit-body"><span>2 TB Bandwidth</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md-big icon-primary mdi mdi-database"></span></div>
                                        <div class="unit-body"><span>8 Databases</span></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="unit unit-spacing-sm unit-horizontal unit-middle">
                                        <div class="unit-left"><span class="icon icon-md icon-primary mdi mdi-email-open"></span></div>
                                        <div class="unit-body"><span>20 Email Accounts</span></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection