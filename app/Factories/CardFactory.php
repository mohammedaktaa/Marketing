<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class CardFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('cards')
            ->queryDatatable($query)
            ->queryUpdateButton('card_id')
            ->queryDeleteButton('card_id')
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('cards')
                ->addHiddenInput('card_id', 'card_id', '', true)
                ->addInputText(trans('app.title'), 'title', 'title', 'req required')
                ->addInputText(trans('app.value'), 'value', 'value', 'req required')
                ->addInputText(trans('app.number'), 'number', 'number', 'req required')
                ->addInputText(trans('app.price'), 'price', 'price', 'req required')
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
