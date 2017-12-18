<?php

namespace App\Providers;

use App\Http\ViewComposers\GlobalComposer;
use App\Http\ViewComposers\HeaderComposer;
use App\Http\ViewComposers\HomeComposer;
use Illuminate\Support\ServiceProvider;

class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer(
            '*', GlobalComposer::class
        );
        view()->composer(
            ['layouts.header','layouts.app'], HeaderComposer::class
        );
        view()->composer(
            '*', HomeComposer::class
        );
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
