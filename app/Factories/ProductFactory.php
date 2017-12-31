<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class ProductFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::with(['category']);
        return \Datatable::queryConfig('products')
            ->queryDatatable($query)
            ->queryUpdateButton('product_id')
            ->queryDeleteButton('product_id')
            ->queryCustomButton('update_image', 'id', 'fa fa-image', '', "href='javascript:void(0)' onclick='admin_update_image(this)'")
            ->queryAddColumn('image',function ($item) use($model){
//                dd($item->logo);
                return '<img src="' . ($item->image ? asset(Product::IMAGE_File_PATH . $item->image) : '') . '" />';
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('products', '', ['gridSystem' => true,'dialogWidth'=>'60%'])
                ->addHiddenInput('product_id', 'product_id', '', true)
                ->addInputText(trans('app.name_en'), 'name_en', 'name_en', 'en d:en req required')
                ->addInputText(trans('app.name_ar'), 'name_ar', 'name_ar', 'ar d:ar req required')
                ->addInputText(trans('app.price'), 'price', 'price', 'req required')
                ->addAutocomplete('admin/categories-autocomplete', trans('app.category'), 'category_id', 'category_id', 'category.name_' . \App::getLocale())
                ->setGridNormalCol(12)
                ->startHorizontalTab()
                ->openHorizontalTab('description1', trans('app.description_en'), '', true)
                ->addTextArea('', 'description_en', 'description_en', 'en d:en d:text-editor')
                ->closeHorizontalTab()
                ->openHorizontalTab('description2', trans('app.description_ar'), '')
                ->addTextArea('', 'description_ar', 'description_ar', 'ar d:ar d:text-editor')
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
