<?php

namespace App\Http\ViewComposers;

use App\Models\CmpGeneral;
use App\Models\CmpLoader;
use App\Models\MenuItem;
use App\Models\Page;
use App\Models\Style;
use Illuminate\Support\Facades\Request;
use Illuminate\View\View;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;


class GlobalComposer
{
    public function compose(View $view)
    {
        $cartCount= \Cart::instance('shopping')->count();
//        dd($cartCount);
        $lang = \App::getLocale();
        $LANG = strtoupper($lang);
        $dir = LaravelLocalization::getCurrentLocaleDirection();
        $left = ($dir == 'ltr') ? 'left' : 'right';
        $right = ($dir == 'ltr') ? 'right' : 'left';
        if (!is_null(Request::route()))
            $pageName = Page::where('page_name', Request::route()->parameter('page'))->first();
        else
            $pageName = 'home';
        $loader=CmpGeneral::where('type','loader')->first();
        $projectname=CmpGeneral::where('type','project_name')->first();
        $request=\App\Models\Request::where('is_accepted')->count();
        $logo=CmpGeneral::where('type','logo')->first();
        $style=Style::first();
        $CSS = ['select2' => '     <link rel="stylesheet" href="' . asset('css/components/select-boxes.css') . '" type="text/css"/>
                               <link rel="stylesheet" href="' . asset('css/components/select2-bootstrap.min.css') . '" type="text/css"/>',
            'datatable' => '   <link rel="stylesheet" href="' . asset("datatable/datatable-$dir.css") . '" type="text/css"/>',
            'bs-filestyle' => '<link rel="stylesheet" href="' . asset('css/components/bs-filestyle.css') . '" type="text/css" />',
            'bs-editable' => ' <link rel="stylesheet" href="' . asset('css/components/bs-editable.css') . '" type="text/css" />',
            'timepicker' => '  <link rel="stylesheet" href="' . asset('css/components/timepicker.css') . '" type="text/css"/>',
            'cropper' => '<link rel="stylesheet" href="' . asset('css/components/cropper.min.css') . '" type="text/css" />'];
        //JS Libraries
        $JS = ['select2' => '     <script type="text/javascript" src="' . asset('js/components/select-boxes.js') . '"></script>
                              <script type="text/javascript" src="' . asset('js/components/select2/i18n/' . $lang . '.js') . '"></script>',
            'datatable' => '   <script type="text/javascript" src="' . asset('datatable/datatable.js') . '"></script>',
            'bs-filestyle' => '<script type="text/javascript" src="' . asset('js/components/bs-filestyle/fileinput.min.js') . '"></script>
                                     <script src="' . asset('js/components/bs-filestyle/themes/fa/theme.min.js') . '"></script>
                              <script type="text/javascript" src="' . asset('js/components/bs-filestyle/locales/' . $lang . '.js') . '"></script>',
            'bs-editable' => '<script type="text/javascript" src="' . asset('js/components/bs-editable.js') . '"></script>',
            'timepicker' => '<script type="text/javascript" src="' . asset('js/components/timepicker.js') . '"></script>'
                . ($lang == 'ar' ? '<script type="text/javascript" src="' . asset('js/components/momentjs/ar.js') . '"></script><script>moment.locale("' . $lang . '");</script>' : ''),
            'ckeditor' => '<script type="text/javascript" src="' . asset('ckeditor/ckeditor.js') . '"></script>
                              <script type="text/javascript" src="' . asset('ckeditor/adapters/jquery.js') . '"></script>',
            'gmap' => '<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCC3X-thsM5s1FkNqwFtRKTaa1CMFctf1k&libraries=places&language=' . $lang . '"></script>
                              <script type="text/javascript" src="' . asset('js/jquery.gmap.js') . '"></script>',
            'cropper' => '<script type="text/javascript" src="' . asset('js/components/cropper.min.js') . '"></script>',];
//dd($content);
        $view->with(compact('lang', 'LANG', 'dir', 'projectname','style','logo','left', 'right', 'pageName', 'menus','cartCount', 'content', 'CSS', 'JS','loader'));
    }
}