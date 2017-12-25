<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Stripe\Stripe;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function requests()
    {
        $types_request=[
            'document'=>trans('app.document_request'),
            'design'=>trans('app.design_request'),
            'work'=>trans('app.work_request'),
            'workshop'=>trans('app.workshop_request')];
        $paper_type=[
            'A5'=>'A5',
            'A4'=>'A4',
            'A3'=>'A3',
            'Cardboard'=>trans('app.cardboard'),
            'photo_paper'=>trans('app.photo_paper')];
        $doc_type=[
            'image'=>trans('app.image'),
            'document'=>trans('app.document')
        ];
        $yesNo=[
            'yes'=>trans('app.yes'),
            'no'=>trans('app.no')
        ];
        $delivery_type=[
            'express_income'=>trans('app.express_income'),
            'hour48'=>trans('app.hour48'),
            'hour24'=>trans('app.hour24'),
            'receive_website'=>trans('app.receive_website'),
            'shipping_finish'=>trans('app.shipping_finish'),
        ];
        $payment_type=[
            'when_receive'=>trans('app.when_receive'),
            'bank_transfer'=>trans('app.bank_transfer'),
            'pay_when_submit'=>trans('app.pay_when_submit'),
        ];
        $print_type=[
            'white_black'=>trans('app.white_black'),
            'white_black_side'=>trans('app.white_black_side'),
            'colored'=>trans('app.colored'),
            'colored_side'=>trans('app.colored_side'),
        ];
        $other_choices=[
          'thermal_packaging'=>trans('app.thermal_packaging'),
          'wire'=>trans('app.wire'),
          'roll'=>trans('app.roll'),
          'stapling'=>trans('app.stapling'),
        ];
        return view('new-requests.requests',compact('types_request','paper_type','doc_type','yesNo','delivery_type','print_type','payment_type','other_choices'));
    }

    public function request(Request $request,$id)
    {
//        Stripe::
        $req=new \App\Models\Request;
        $req->create($request->all());
        return $req;
    }
    public function requestUpdate(Request $request,$id)
    {
        $req=\App\Models\Request::findOrFail($id);
        $req->price=$request->price;
        $req->is_accepted=$request->is_accepted;
        return $req;
    }
}
