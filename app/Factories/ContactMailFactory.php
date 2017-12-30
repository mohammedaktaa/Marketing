<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class ContactMailFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('contact')
            ->queryDatatable($query)
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('contact')
                ->addHiddenInput('id', 'id', '', true)
                ->addInputText(trans('app.f_name'), 'f_name', 'f_name', 'req required')
                ->addInputText(trans('app.l_name'), 'l_name', 'l_name', 'req required')
                ->addInputText(trans('app.phone'), 'phone', 'phone', 'req required')
                ->addInputText(trans('app.email'), 'email', 'email', 'req required')
                ->addInputText(trans('app.message'), 'message', 'message', 'req required')
                ->addNavButton()
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
