<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class ClientSayFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('clients_say')
            ->queryDatatable($query)
            ->queryUpdateButton('client_id')
            ->queryDeleteButton('client_id')
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('clients_say')
                ->addHiddenInput('client_id', 'client_id', '', true)
                ->addInputText(trans('app.client_name'), 'client_name', 'client_name', 'req required')
                ->addInputText(trans('app.text'), 'say', 'say', 'req required')
                ->addInputText(trans('app.work'), 'work', 'work', 'req required')
                ->addInputText(trans('app.active'), 'active', 'active')
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
                ->addNavButton([],['code'])
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
