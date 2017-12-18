<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class FontAwesomeFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('fonts')
            ->queryDatatable($query)
            ->queryUpdateButton('font_id')
            ->queryDeleteButton('font_id')
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
            return \Datatable::config('fonts')
                ->addHiddenInput('font_id', 'font_id', '', true)
                ->addInputText(trans('app.icon'), 'icon', 'icon', 'req required','','',false)
                ->addViewField(trans('app.icon'), 'icon_name', 'icon_name', 'icon_name','font-awesomes')
                ->addInputText(trans('app.content'), 'content', 'content', 'req required')
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
