<?php

namespace App\Http\ViewComposers;

/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 12/31/2016
 * Time: 10:33 PM
 */
use App\Models\Achievment;
use App\Models\Advantage;
use App\Models\Blog;
use App\Models\Career;
use App\Models\Client;
use App\Models\ClientSay;
use App\Models\CmpCounter;
use App\Models\Course;
use App\Models\Manager;
use App\Models\Product;
use App\Models\Question;
use App\Models\Section;
use App\Models\Service;
use App\Models\Slider;
use App\Models\Team;
use App\Models\Website;
use Illuminate\Contracts\View\View;

class HomeComposer
{
    public function compose(View $view)
    {
        $stopPage=Website::first();
        $counters = CmpCounter::all();
        $clientSay = ClientSay::all();
        $clients = Client::all();
        $courses = Course::all();
        $team = Team::all();
        $questions = Question::all();
        $services = Service::all();
        $products = Product::all();
        $sections = Section::where('value', '=', '1')->orderBy('order')->get();
        $advantages = Advantage::all();
        $sliders=Slider::all();
        $manager=Manager::first();
        $careers=Career::all();
        $prodcts=Product::paginate(4);
        $blogss=Blog::paginate(4);
        $blog4=Blog::orderBy('created_at')->paginate(4);
        $address='Oman';
        $phone='096321545';
        $email='Zeyad@gmail.com';
    $view->with(compact('counters','phone','achievments','clients','blog4','stopPage','email','address','prodcts','blogss','careers','manager','sliders', 'clientSay', 'courses', 'team', 'questions', 'services', 'products', 'sections','advantages'));
    }
}