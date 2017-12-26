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
                ->setGridNormalCol(12)
                ->startHorizontalTab()
                ->openHorizontalTab('text1', trans('app.text').' '.trans('app._en'), '', true)
                ->addTextArea('', 'text_en', 'text_en', 'en d:en d:text-editor')
                ->closeHorizontalTab()
                ->openHorizontalTab('text2', trans('app.text').' '.trans('app._ar'), '')
                ->addTextArea('', 'text_ar', 'text_ar', 'ar d:ar d:text-editor')
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
