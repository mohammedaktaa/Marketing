<?php

namespace App\Http\ViewComposers;

/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 12/31/2016
 * Time: 10:33 PM
 */
use App\Models\Advantage;
use App\Models\ClientSay;
use App\Models\CmpCounter;
use App\Models\Course;
use App\Models\Product;
use App\Models\Question;
use App\Models\Section;
use App\Models\Service;
use App\Models\Team;
use Illuminate\Contracts\View\View;

class HomeComposer
{
    public function compose(View $view)
    {
        $counters = CmpCounter::all();
        $clientSay = ClientSay::all();
        $courses = Course::all();
        $team = Team::all();
        $questions = Question::all();
        $services = Service::all();
        $products = Product::all();
        $sections = Section::where('value', '=', '1')->orderBy('order')->get();
        $advantages = Advantage::all();
        $view->with(compact('counters', 'clientSay', 'courses', 'team', 'questions', 'services', 'products', 'sections','advantages'));
    }
}