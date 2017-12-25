<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class RequestFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('requests')
            ->queryDatatable($query)
//            ->queryUpdateButton('request_id')
//            ->queryDeleteButton('request_id')
            ->queryCustomButton('accept','request_id','icon-list',''," onClick='open_request_modal($(this))' href='javascript:void(0);'")
//            ->queryAddColumn('icon_name',function ($item){
//                return "<em class='$item->icon'></em>";
//            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('requests', '', ['gridSystem' => true])
                ->addHiddenInput('request_id', 'request_id', '', true)
                ->addInputText(trans('app.name'), 'name', 'name', 'req required')
                ->addInputText(trans('app.email'), 'email', 'email', ' req required')
                ->addInputText(trans('app.phone'), 'phone', 'phone', 'req required')
                ->addInputText(trans('app.delivery_place'), 'delivery_place', 'delivery_place', 'none')
                ->addInputText(trans('app.delivery_way'), 'delivery_way', 'delivery_way', 'none')
                ->addInputText(trans('app.shipping_bool'), 'shipping_bool', 'shipping_bool', ' none')
                ->addInputText(trans('app.payment_way'), 'payment_way', 'payment_way', 'none')
                ->addInputText(trans('app.paper_type'), 'paper_type', 'paper_type', ' none')
                ->addInputText(trans('app.doc_type'), 'doc_type', 'doc_type', 'none')
                ->addInputText(trans('app.other_choices'), 'other_choices', 'other_choices', ' none')
                ->addInputText(trans('app.description_design'), 'description_design', 'description_design', 'none')
                ->addInputText(trans('app.experiences'), 'experiences', 'experiences', ' none')
                ->addInputText(trans('app.reason'), 'reason', 'reason', 'none')
                ->addInputText(trans('app.side_type'), 'side_type', 'side_type', ' none')
                ->addInputText(trans('app.print_type'), 'print_type', 'print_type', 'none')
                ->addInputText(trans('app.paper_type'), 'paper_type', 'paper_type', ' none')
                    ->addActionButton(trans('app.submit'),'accept','accept')
                ->addNavButton([],['add'])
                ->onModalOpen('_textEditor($(modal))')
                ->render();
        } catch (\Exception $e) {
        }
    }

    /**
     *  store action for save relation
     */
    public function storeDatatable($model = null, $request = null, $result = null)
    {
        //
    }

    /**
     *  store action for update relation
     */
    public function updateDatatable($model = null, $request = null, $result = null)
    {
        //
    }

    /**
     *  store action for destroy relation
     */
    public function destroyDatatable($model = null, $request = null, $result = null)
    {
        //
    }

    /**
     *  inline validate dialog form
     */
    public function validateDatatable()
    {
        return [];
    }
}
