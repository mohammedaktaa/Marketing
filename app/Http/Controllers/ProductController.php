<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{

    public function index()
    {
        $produtess = Product::with(['category'])->paginate(6);
        $categories = Category::paginate(5);
        $success = 'failed';
        return view('market.products', compact('produtess', 'categories', 'success'));
    }

    public function payNow($id)
    {
        $product = Product::findOrFail($id);
        if (!empty($product)) {
            $payController = new PaymentController;
            return $payController->getCheckout($product->price, $product->name_en, $product->description_en);
        } else {
            return back();
        }

    }

    public function payLocalNow($id)
    {
        $product = Product::findOrFail($id);
        if (!empty($product)) {
            if (Auth::user()->account_money >= $product->price) {
                Auth::user()->account_money=Auth::user()->account_money - $product->price;
                Auth::user()->save();
                return ['success'=>'success','msg'=>trans('app.success_payed'),'type'=>'success','money'=>Auth::user()->account_money];
            }else{
                return ['success'=>'failed','msg'=>trans('app.failed_pay'),'type'=>'error','money'=>Auth::user()->account_money];
            }
        } else {
            return back();
        }

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
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::findOrFail($id);
//       return view('ma')
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
