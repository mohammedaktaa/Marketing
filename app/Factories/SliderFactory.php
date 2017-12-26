<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;

class SliderFactory extends GlobalFactory
{
protected $numBtn=[];
public function __construct(DataTableBuilder $table)
{
    parent::__construct($table);
    $this->numBtn=['1'=>1,'2'=>2];
}

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('sliders')
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
            return \Datatable::config('sliders')
                ->addHiddenInput('id', 'id', '', true)
                ->addInputText(trans('app.text').' '.trans('app._en'), 'text_en', 'text_en', 'en d:en ')
                ->addInputText(trans('app.text').' '.trans('app._ar'), 'text_ar', 'text_ar', 'ar d:ar ')
                ->addSelect($this->numBtn,trans('app.number').' '.trans('app.btns'), 'num_of_btn', 'num_of_btn', 'num_of_btn')
                ->addInputText(trans('app.text').' '.trans('app.btn1'), 'btn1_text', 'btn1_text', 'none')
                ->addInputText(trans('app.text').' '.trans('app.btn2'), 'btn2_text', 'btn2_text', 'none')
                ->addInputText(trans('app.target').' '.trans('app.btn1'), 'url1', 'url1', 'none')
                ->addInputText(trans('app.target').' '.trans('app.btn2'), 'url2', 'url2', 'none')
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
                ->addNavButton()
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
