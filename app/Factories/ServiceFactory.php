<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class ServiceFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('services')
            ->queryDatatable($query)
            ->queryUpdateButton('service_id')
            ->queryDeleteButton('service_id')
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
            return \Datatable::config('services','',['gridSystem'=>true,'dialogWidth'=>'60%'])
                ->addHiddenInput('service_id', 'service_id', '', true)
                ->addInputText(trans('app.name_en'), 'name_en', 'name_en', 'en d:en req required')
                ->addInputText(trans('app.name_ar'), 'name_ar', 'name_ar', 'ar d:ar req required')
                ->addTextArea(trans('app.content').' '.trans('app._en'), 'content_en', 'content_en', 'en d:en')
                ->addTextArea(trans('app.content').' '.trans('app._ar'), 'content_ar', 'content_ar', 'ar d:ar')
                ->addAutocomplete('admin/icons-autocomplete', trans('app.icon'), 'icon', 'icon', 'icon','','','',false)
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
