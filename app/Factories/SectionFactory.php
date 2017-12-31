<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;

class SectionFactory extends GlobalFactory
{
    protected $types;

    public function __construct(DataTableBuilder $table)
    {
        parent::__construct($table);
        $this->activeNot=[
            '1'=>trans('app.active'),
            '0'=>trans('app.not_active'),
        ];
    }

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::orderBy('order');
        return \Datatable::queryConfig('sections')
            ->queryDatatable($query)
            ->queryUpdateButton('section_id')
            ->queryDeleteButton('section_id')
            ->queryAddColumn('value_name',function ($item){
                return $this->activeNot[$item->value];
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('sections')
                ->addHiddenInput('section_id', 'section_id', '', true)
                ->addInputText(trans('app.name_en'), 'name_en', 'name_en', 'en d:en req required')
                ->addInputText(trans('app.name_ar'), 'name_ar', 'name_ar', 'ar d:ar req required')
                ->addSelect($this->activeNot,trans('app.active'),'value','value','value_name','req required')
                ->addInputText(trans('app.order'), 'order', 'order', 'req required')
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
                ->addNavButton([],['code'])
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
