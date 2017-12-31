<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class CategoryFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('categories')
            ->queryDatatable($query)
            ->queryUpdateButton('category_id')
            ->queryDeleteButton('category_id')
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('categories')
                ->addHiddenInput('category_id', 'category_id', '', true)
                ->addInputText(trans('app.name_en'), 'name_en', 'name_en', 'en d:en req required')
                ->addInputText(trans('app.name_ar'), 'name_ar', 'name_ar', 'ar d:ar req required')
                ->addInputText(trans('app.code'), 'code', 'code', 'req required')
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
