<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class PrivacyFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('privacy')
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
            return \Datatable::config('privacy', '', ['gridSystem' => true,'dialogWidth'=>'60%'])
                ->addHiddenInput('id', 'id', '', true)
                ->addInputText(trans('app.text').' '.trans('app._en'), 'title_en', 'title_en', 'en d:en req required')
                ->addInputText(trans('app.text').' '.trans('app._ar'), 'title_ar', 'title_ar', 'ar d:ar req required')
                ->setGridNormalCol(12)
                ->startHorizontalTab()
                ->openHorizontalTab('content1', trans('app.content_en'), '', true)
                ->addTextArea('', 'content_en', 'content_en', 'en d:en d:text-editor')
                ->closeHorizontalTab()
                ->openHorizontalTab('content2', trans('app.content_ar'), '')
                ->addTextArea('', 'content_ar', 'content_ar', 'ar d:ar d:text-editor')
                ->closeHorizontalTab()
                ->endHorizontalTab()
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
                ->addNavButton()
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
