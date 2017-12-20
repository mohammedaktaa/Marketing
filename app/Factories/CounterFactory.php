<?php

namespace App\Factories;

use App\Models\Course;
use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class CounterFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('counters')
            ->queryDatatable($query)
            ->queryUpdateButton('counter_id')
            ->queryDeleteButton('counter_id')
            ->queryAddColumn('icon_name',function ($item){
                return "<em class='$item->icon'></em>";
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('counters')
                ->addHiddenInput('counter_id', 'counter_id', '', true)
                ->addInputText(trans('app.title').' '.trans('app._en'), 'title_en', 'title_en', 'en d:en req required')
                ->addInputText(trans('app.title').' '.trans('app._ar'), 'title_ar', 'title_ar', 'ar d:ar req required')
                ->addInputText(trans('app.count'), 'count', 'count', 'req required')
                ->addInputText(trans('app.code'), 'code', 'code', 'req required ')
                ->addAutocomplete('admin/icons-autocomplete', trans('app.icon'), 'icon', 'icon', 'category.name_' . \App::getLocale(),'','','',false)
                ->addViewField(trans('app.icon'), 'icon_name', 'icon_name', 'icon_name')
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
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
