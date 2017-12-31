<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;

class StatiticFactory extends GlobalFactory
{

    protected $statistics=[];
    public function __construct(DataTableBuilder $table)
    {
        parent::__construct($table);
        $this->statistics=['customers'=>trans('app.customers'),
                           'requests'=>trans('app.requests'),
                           'page_printed'=>trans('app.page_printed'),
                           'print_operations'=>trans('app.print_operations'),
                           'planted_trees'=>trans('app.planted_trees')];
    }

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('statistic')
            ->queryDatatable($query)
            ->queryUpdateButton('id')
            ->queryAddColumn('values',function ($item){
                return $this->statistics[$item->name];
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('statistic')
                ->addHiddenInput('id', 'id', '', true)
                ->addSelect($this->statistics,trans('app.name'),'name','name','values','req required')
                ->addInputText(trans('app.value'),'value','value','req required')
                ->addInputText(trans('app.date'),'year','year','req required d:datepicker')
                ->addActionButton($this->update, 'update', 'update')
                ->addNavButton([],['code'])
                ->onModalOpen('_datePicker($(modal));')
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
