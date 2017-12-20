<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $course=Course::paginate(4);
//        \Cart::instance('shopping')->add('192aod2', 'Product 1', 1, 9.99);
//        \Cart::instance('shopping')->add('192asao12', 'Product 1', 1, 9.99);
//        \Cart::instance('shopping')->add('192aods12', 'Product 1', 1, 9.99);
//        \Cart::instance('shopping')->add('192adsao12', 'Product 1', 1, 9.99);
//        \Cart::instance('shopping')->add('192adso12', 'Product 1', 1, 9.99);
//        return ['content'=>\Cart::instance('shopping')->content(),'count'=>\Cart::instance('shopping')->count()];
        return view('courses.courses',compact('course'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $course=Course::findOrFail($id);
        return view('courses.single-course',compact('course'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
