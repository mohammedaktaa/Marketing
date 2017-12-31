<?php

namespace App\Factories;

use App\Models\Achievment;
use App\Models\Gallery;
use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class GalleryFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('gallery')
            ->queryDatatable($query)
            ->queryUpdateButton('id')
            ->queryDeleteButton('id')
            ->queryCustomButton('update_image', 'id', 'fa fa-image', '', "href='javascript:void(0)' onclick='admin_update_image(this)'")
            ->queryAddColumn('image',function ($item) use($model){
                return '<img src="' . ($item->image ? asset(Gallery::IMAGE_File_PATH . $item->image) : '') . '" />';
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('gallery', '', ['gridSystem' => true,'dialogWidth'=>'60%'])
                ->addHiddenInput('id', 'id', '', true)
                ->addInputText(trans('app.title').' '.trans('app._en'), 'title_en', 'title_en', 'en d:en req required')
                ->addInputText(trans('app.title').' '.trans('app._ar'), 'title_ar', 'title_ar', 'ar d:ar req required')
                ->setGridNormalCol(12)
                ->startHorizontalTab()
                ->openHorizontalTab('content1', trans('app.content').' '.trans('app._en'), '', true)
                ->addTextArea('', 'content_en', 'content_en', 'en d:en d:text-editor none')
                ->closeHorizontalTab()
                ->openHorizontalTab('content2', trans('app.content').' '.trans('app._ar'), '')
                ->addTextArea('', 'content_ar', 'content_ar', 'ar d:ar d:text-editor none')
                ->closeHorizontalTab()
                ->endHorizontalTab()
                ->addViewField('', 'image', 'image', '', 'none')
                ->addActionButton(trans('app.update_image'), 'update_image', 'update_image')
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
