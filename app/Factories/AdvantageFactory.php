<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class AdvantageFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('advantages')
            ->queryDatatable($query)
            ->queryUpdateButton('advantage_id')
            ->queryDeleteButton('advantage_id')
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
            return \Datatable::config('advantages', '', ['gridSystem' => true])
                ->addHiddenInput('advantage_id', 'advantage_id', '', true)
                ->addInputText(trans('app.title').' '.trans('app._en'), 'title_en', 'title_en', 'en d:en req required')
                ->addInputText(trans('app.title').' '.trans('app._ar'), 'title_ar', 'title_ar', 'ar d:ar req required')
                ->setGridNormalCol(12)
                ->startHorizontalTab()
                ->openHorizontalTab('content1', trans('app.content').' '.trans('app._en') , '', true)
                ->addTextArea(trans('app.content').' '.trans('app._en'), 'content_en', 'content_en', 'en d:en d:text-editor')
                ->closeHorizontalTab()
                ->openHorizontalTab('content2', trans('app.content').' '.trans('app._ar') , '')
                ->addTextArea(trans('app.content').' '.trans('app._ar'), 'content_ar', 'content_ar', 'ar d:ar d:text-editor')
                ->closeHorizontalTab()
                ->endHorizontalTab()
                ->addAutocomplete('admin/icons-autocomplete', trans('app.icon'), 'icon', 'icon', 'icon','','','',false)
                ->addViewField(trans('app.icon'), 'icon_name', 'icon_name', 'icon_name')
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
                ->addNavButton([],['code'])
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
