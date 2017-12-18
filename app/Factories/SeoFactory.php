<?php

namespace App\Factories;

use App\Branch;
use App\Program;
use Aut\DataTable\Factories\GlobalFactory;
use LaravelLocalization;

class SeoFactory extends GlobalFactory
{

    public function position(){
        $position='';
        if(LaravelLocalization::getCurrentLocaleDirection()=='rtl')
            $position='right';
        else
            $position='left';
        return $position;

    }
    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('seos')
            ->queryDatatable($query)
            ->queryUpdateButton('id')
            ->queryDeleteButton('id')
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('seos', '', ['gridSystem' => true])
                ->addHiddenInput('id', 'id', '', true)
                ->addInputText(trans('app.title') . ' ' . trans('app._en'), 'title_en', 'title_en', 'en d:en req required')
                ->addInputText(trans('app.title') . ' ' . trans('app._ar'), 'title_ar', 'title_ar', 'ar d:ar req required')
                ->addInputText(trans('app.keyword') . ' ' . trans('app._en'), 'keyword_en', 'keyword_en', 'en d:en req required')
                ->addInputText(trans('app.keyword') . ' ' . trans('app._ar'), 'keyword_ar', 'keyword_ar', 'ar d:ar req required')
                ->setGridNormalCol(12)
                ->startHorizontalTab()
                ->openHorizontalTab('description1', trans('app.description_en'), 'req', true)
                ->addTextArea(trans('app.description_en'), 'description_en', 'description_en', 'en d:en d:text-editor')
                ->closeHorizontalTab()
                ->openHorizontalTab('description2', trans('app.description_ar'), 'req')
                ->addTextArea(trans('app.description_ar'), 'description_ar', 'description_ar', 'ar d:ar d:text-editor')
                ->closeHorizontalTab()
                ->endHorizontalTab()
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
                ->onModalOpen('_textEditor($(modal))')
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
