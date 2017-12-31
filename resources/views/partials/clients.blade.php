<section class="section section-md bg-white text-center">
    <div class="shell shell-wide">
        <!-- Owl Carousel-->
        <div class="owl-carousel owl-dots-secondary owl-layout-4" data-items="1" data-xs-items="2" data-sm-items="3"
             data-md-items="4" data-lg-items="6" data-dots="true" data-nav="false" data-stage-padding="0"
             data-loop="true" data-margin="30" data-mouse-drag="false">
            @foreach($clients as $client)
                <a class="link-image" href="{{$client->website?$client->website:'#'}}" target="_blank"><img class="img-responsive"
                            src="{{$client->logo?asset(\App\Models\Client::LOGO_File_PATH.$client->logo):asset('images/logo-image-1-174x113.png')}}"
                            alt="{{$client['name_'.$lang]}}" width="174" height="113"/>
                    {{$client['name_'.$lang]}}
                </a>
            @endforeach

        </div>
    </div>
</section>