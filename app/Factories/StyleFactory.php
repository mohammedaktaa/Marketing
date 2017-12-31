<?php

namespace App\Factories;

use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;

class StyleFactory extends GlobalFactory
{

    protected $styles=[];
    public function __construct(DataTableBuilder $table)
    {
        parent::__construct($table);
        $this->styles=[
            'pink'=>'Pink',
            'purple'=>'Purple'
        ];
    }

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('styles')
            ->queryDatatable($query)
            ->queryUpdateButton('style_id')
            ->queryAddColumn('style',function ($item){
                return $this->styles[$item->value];
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('styles')
                ->addHiddenInput('style_id', 'style_id', '', true)
                ->addSelect($this->styles,trans('app.value'), 'value', 'value', 'style','req required')
                ->addActionButton($this->update, 'update', 'update')
                ->addNavButton([],['add','code'])
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
//        dd($request);
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
