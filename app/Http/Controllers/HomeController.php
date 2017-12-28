<?php

namespace App\Http\Controllers;

use App\Models\Attribute;
use App\Models\Career;
use App\Models\Coupon;
use App\Models\Page;
use App\Models\PrivacyPolicy;
use App\Models\Product;
use App\Models\Team;
use App\Notifications\RequestNotification;
use App\User;
use Auth;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    protected $language;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
        $this->language = \App::getLocale();
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
//        dd(Auth::user()->notifications[0]->data);
        return view('home');
    }

    public function requests()
    {
        $types_request = [
            'document' => trans('app.document_request'),
            'design' => trans('app.design_request'),
            'work' => trans('app.work_request'),
            'workshop' => trans('app.workshop_request')];
        $paper_type = [
            'A5' => 'A5',
            'A4' => 'A4',
            'A3' => 'A3',
            'Cardboard' => trans('app.cardboard'),
            'photo_paper' => trans('app.photo_paper')];
        $doc_type = [
            'image' => trans('app.image'),
            'document' => trans('app.document')
        ];
        $yesNo = [
            'yes' => trans('app.yes'),
            'no' => trans('app.no')
        ];
        $delivery_type = [
            'express_income' => trans('app.express_income'),
            'hour48' => trans('app.hour48'),
            'hour24' => trans('app.hour24'),
            'receive_website' => trans('app.receive_website'),
            'shipping_finish' => trans('app.shipping_finish'),
        ];
        $payment_type = [
            'when_receive' => trans('app.when_receive'),
            'bank_transfer' => trans('app.bank_transfer'),
            'pay_when_submit' => trans('app.pay_when_submit'),
        ];
        $print_type = [
            'white_black' => trans('app.white_black'),
            'white_black_side' => trans('app.white_black_side'),
            'colored' => trans('app.colored'),
            'colored_side' => trans('app.colored_side'),
        ];
        $other_choices = [
            'thermal_packaging' => trans('app.thermal_packaging'),
            'wire' => trans('app.wire'),
            'roll' => trans('app.roll'),
            'stapling' => trans('app.stapling'),
        ];
        return view('new-requests.requests', compact('types_request', 'paper_type', 'doc_type', 'yesNo', 'delivery_type', 'print_type', 'payment_type', 'other_choices'));
    }

    public function request(Request $request, $id)
    {
        $req = new \App\Models\Request;
        $req->create($request->all());
        return $req;
    }

    public function addCart($id, $model)
    {
        if ($model == 'Product')
            $item = Product::where('product_id', $id)->first();
        \Cart::instance('shopping')->add($item->product_id, $item['name_' . $this->language], 1, $item->price, ['image' => $item->image]);
        return ['count' => \Cart::instance('shopping')->count()];
    }

    public function shoppingCart()
    {
        $content = \Cart::instance('shopping')->content();
        $count = \Cart::instance('shopping')->count();
//        dd($content);
        $sum = 0;
        foreach ($content as $item) {
            $sum += $item->price;
        }
        return view('payment.shopping-cart', compact('content', 'count', 'sum'));
    }

    function generateRandomString($length = 10)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    public function generateCopouns(Request $request, $count = 10)
    {
        for ($i = 0; $i < $count; $i++) {
            $coupon = new Coupon;
            $coupon->code = $this->generateRandomString(20);
            $coupon->value = $request->value;
            $coupon->expire_date = $request->expire_date;
            $coupon->save();
        }
    }

    public function payLocalNow($sum)
    {
        if (Auth::user()->account_money >= $sum) {
            Auth::user()->account_money = Auth::user()->account_money - $sum;
            Auth::user()->save();
            $count = \Cart::instance('shopping')->destroy();
            $count = \Cart::instance('shopping')->count();
//            dd($count);
            return ['success' => 'success', 'msg' => trans('app.success_payed'), 'type' => 'success', 'money' => Auth::user()->account_money, 'count' => $count];
        } else {
            return ['success' => 'failed', 'msg' => trans('app.failed_pay'), 'type' => 'error', 'money' => Auth::user()->account_money];
        }
    }

    public function applyCoupon(Request $request, $sum)
    {
        $code = Coupon::where('code', $request->get('code'))->first();
        if ($code->expire_date >= $code->expire_dat) {
            $diff = $sum * ($code->value / 100);
            $sum = $sum - $diff;
            return ['success' => 'success', 'msg' => trans('app.success_apply'), 'type' => 'success', 'sum' => $sum];
        } else {
            return ['success' => 'failed', 'msg' => trans('app.failed_apply'), 'type' => 'error', 'sum' => $sum];
        }
    }

    public function page($page)
    {
        $info = [];
        $pageContent = Page::where('page_name', $page)->with(['attributePage.attribute'])->first();
        $attrs = Attribute::all();
        foreach ($pageContent->attributePage as $item) {
            foreach ($attrs as $attr) {
                if ($item->attribute->text == $attr->text)
                    $info[$item->attribute->text] = [$item->attribute->text => $item->attribute_value];
            }
        }

        return view('pages.' . $page, compact('pageContent', 'info'));
    }

    public function about($id)
    {
        $teams = Team::where('team_id', $id)->first();
        return view('about-me', compact('teams'));
    }

    public function insert()
    {
        return view('payment.insert-code');
    }

    public function careers()
    {
        return view('careers');
    }

    public function career($id)
    {
        $career = Career::findOrFail($id);
        return view('single-career', compact('career'));
    }

    public function privacy()
    {
        $privacy = PrivacyPolicy::first();
        return view('privacy', compact('privacy'));
    }

    public function sendRequest(Request $request,$id)
    {
//        $user = Auth::user();
        $req=\App\Models\Request::findOrFail($id);
        $req->update($request->all());
        $user=User::findOrFail($req->user_id);
        $user->notify(new RequestNotification($req));
        return ['success'=>true];
    }
}
