<section class="section section-variant-1 bg-primary-accent section-way-point" id="shop">
    <div class="way-point" data-custom-scroll-to="#shop">
        <svg version="1.1" x="0px" y="0px" width="253px" height="38px" enable-background="new 0 0 253 38" xml:space="preserve">
            <path style="clip-path: url(#gel);" fill-rule="evenodd" clip-rule="evenodd" d="M252,36.001C199.397,36.001,176,0,125.815,0                                       C76,0,52.988,36.001,0,36.001C4.336,40.465,273.563,36.001,252,36.001z"></path>
          </svg><span class="icon mdi mdi-chevron-down"></span>
    </div>
    <div class="shell shell-wide">
        <div class="range range-lg-right range-30">
            <div class="cell-lg-8">
                <div class="parallax-text-wrap">
                    <h3>{{trans('app.our_shop')}}</h3><span class="parallax-text">{{trans('app.products')}}</span>
                </div>
                <hr class="divider divider-default">
            </div>
            <div class="cell-lg-3 text-lg-right"><a class="button button-default-outline button-nina" href="{{localizeURL('products')}}">{{trans('app.view_all_products')}}</a></div>
        </div>
        <div class="range range-30 range-xl">
            @foreach($prodcts as $prodct)
            <div class="cell-sm-6 cell-md-4 cell-lg-3 cell-xl-3">
                <div class="product">
                    <div class="product-image"><a href="#"><img src="{{asset('images/book-01-188x246.jpg')}}" alt="" width="188" height="246"/></a></div>
                    <div class="product-title">
                        <h5><a href="product-page.html">{{$prodct['name_'.$lang]}}</a></h5>
                    </div>
                    <div class="product-price">
                        <h6>{{$prodct->price}}</h6>
                    </div>
                    <div class="product-button"><a class="button button-secondary" href="{{localizeURL('add-cart/'.$prodct->product_id.'/Product')}}">{{trans('app.add_to_cart')}}</a></div>
                </div>
            </div>
                @endforeach
        </div>
    </div>
</section>