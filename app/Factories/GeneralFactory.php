<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;

class GeneralFactory extends GlobalFactory
{
    protected $types;

    public function __construct(DataTableBuilder $table)
    {
        parent::__construct($table);
        $this->types=[
            'loader'=>trans('app.loader'),
            'slider_state'=>trans('app.slider_state'),
        ];
    }

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('generals')
            ->queryDatatable($query)
            ->queryUpdateButton('general_id')
            ->queryDeleteButton('general_id')
            ->queryAddColumn('type_name',function ($item){
                return $this->types[$item->type];
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('generals')
                ->addHiddenInput('general_id', 'general_id', '', true)
                ->addSelect($this->types,trans('app.type'),'type','type','type_name','req required')
                ->addInputText(trans('app.value'), 'value', 'value', ' req required')
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
