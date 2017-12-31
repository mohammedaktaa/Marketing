<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;

class WebsiteFactory extends GlobalFactory
{

    protected $pages=[];
    public function __construct(DataTableBuilder $table)
    {
        parent::__construct($table);
        $this->pages=['counter'=>trans('app.coming_soon'),'under_construction'=>trans('app.under_construction')];
    }

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('website')
            ->queryDatatable($query)
            ->queryUpdateButton('id')
            ->queryAddColumn('page',function ($item){
                return $this->pages[$item->value];
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('website')
                ->addHiddenInput('id', 'id', '', true)
                ->addSelect($this->pages,trans('app.page'),'value','value','page','req required')
                ->addInputText(trans('app.date'), 'date', 'date', 'd:datepicker')
                ->addActionButton($this->update, 'update', 'update')
                ->addNavButton([],['add','code'])
                ->onModalOpen('_datePicker($(modal))')
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
