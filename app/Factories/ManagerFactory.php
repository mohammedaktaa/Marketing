<?php

namespace App\Factories;

use App\Models\Manager;
use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class ManagerFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('manager')
            ->queryDatatable($query)
            ->queryUpdateButton('id')
            ->queryCustomButton('update_image', 'id', 'fa fa-image', '', "href='javascript:void(0)' onclick='admin_update_image(this)'")
            ->queryAddColumn('image',function ($item) use($model){
                return '<img src="' . ($item->image_manager ? asset(Manager::IMAGE_File_PATH . $item->image_manager) : '') . '" />';
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('manager')
                ->addHiddenInput('id', 'id', '', true)
                ->addInputText(trans('app.name'), 'name', 'name', 'req required')
                ->addInputText(trans('app.about_manager'), 'about_manager', 'about_manager', '')
                ->addInputText(trans('app.overview'), 'overview', 'overview', '')
                ->addInputText(trans('app.mission'), 'mission', 'mission', '')
                ->addViewField('', 'image', 'image', '', 'none')
                ->addActionButton(trans('app.update_image'), 'update_image', 'update_image')
                ->addActionButton($this->update, 'update', 'update')
                ->addNavButton([],['add','code'])
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
