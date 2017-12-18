<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class PageFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::with(['attribute']);
        return \Datatable::queryConfig('pages')
            ->queryDatatable($query)
            ->queryUpdateButton('page_id')
            ->queryDeleteButton('page_id')
            ->queryCustomButton('attributes','page_id','icon-list',''," onClick='open_attributes_modal($(this))' href='javascript:void(0);'")
            ->queryAddColumn('attribute',function ($item){
                $ul='<ul>';
                foreach ($item->attribute as $value){
                    $ul .='<li>'.$value->text.': '. $value->pivot->attribute_value .'</li>';
                }
                $ul.='</ul>';
                return $ul;
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('pages')
                ->addHiddenInput('page_id', 'page_id', '', true)
                ->addInputText(trans('app.page_name'), 'page_name', 'page_name', 'req required')
                ->addViewField(trans('app.attributes'),'attribute','attribute','','none')
                ->addActionButton(trans('app.attributes'), 'attributes', 'attributes')
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
