<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class AttributePageFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
//        dd(request('page'));
        if(request('page'))
        $query = $model::where('page_id',request('page'))->with(['page','attribute']);
        else
        $query = $model::with(['page','attribute']);
        return \Datatable::queryConfig('attribute_page')
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
//        dd(request('page'));
        try {

            $table= \Datatable::config('attribute_page')
                ->addHiddenInput('id', 'id', '', true);
                if(request('page'))
                    $table->addHiddenInput('page_id','page_id',request('page'),false,true);
                else
                $table->addAutocomplete('admin/pages-autocomplete',trans('app.page'),'page_id','page_id','page.page_name','req required');
                $table->addAutocomplete('admin/attributes-autocomplete',trans('app.attribute'),'attribute_id','attribute_id','attribute.text','req required')
                ->addTextArea(trans('app.value'), 'attribute_value', 'attribute_value', 'req required')
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
                ->addNavButton([],['code']);
                return $table->render();
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
