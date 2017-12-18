<?php
/**
 * Created by PhpStorm.
 * User: Eng.Mohammad
 * Date: 12/5/2017
 * Time: 9:00 PM
 */
if (!function_exists('localizeURL')) {
    /**
     *
     * Return locale url
     *
     * @param $url
     * @return \Illuminate\Contracts\Routing\UrlGenerator|string
     */
    function localizeURL($url = '')
    {
        $url = \Illuminate\Support\Str::startsWith($url, '/') ? $url : "/$url";

        return url(\LaravelLocalization::getCurrentLocale() . "$url");
    }
}
if (!function_exists('moveFileFromTemp')) {

    function moveFileFromTemp($newPath, $name, $newName = '')
    {
        if ($newName == '') $newName = $name;
        \File::move(storage_path('app\\public\\temp\\' . $name), storage_path('app\\public\\' . str_replace('/', '\\', $newPath)) . $newName);
    }
}
