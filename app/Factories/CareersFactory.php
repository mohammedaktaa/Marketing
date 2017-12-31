<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;

class CareersFactory extends GlobalFactory
{

    protected $types=[];
    public function __construct(DataTableBuilder $table)
    {
        parent::__construct($table);
        $this->types=['full'=>trans('app.full_time'),
            'part'=>trans('app.part_time')];
    }

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::with(['city']);
        return \Datatable::queryConfig('careers')
            ->queryDatatable($query)
            ->queryUpdateButton('id')
            ->queryDeleteButton('id')
            ->queryAddColumn('types',function ($item){
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
            return \Datatable::config('careers', '', ['gridSystem' => true,'dialogWidth'=>'60%'])
                ->addHiddenInput('id', 'id', '', true)
                ->addInputText(trans('app.title_en'), 'title_en', 'title_en', 'en d:en req required')
                ->addInputText(trans('app.title_ar'), 'title_ar', 'title_ar', 'ar d:ar req required')
                ->addAutocomplete('admin/city-autocomplete', trans('app.city'), 'city_id', 'city_id', 'city.name_' . \App::getLocale())
                ->addSelect($this->types,trans('app.type_attend'),'type','type','types')
                ->setGridNormalCol(12)
                ->startHorizontalTab()
                ->openHorizontalTab('content1', trans('app.content_en'), '', true)
                ->addTextArea('', 'content_en', 'content_en', 'en d:en d:text-editor none')
                ->closeHorizontalTab()
                ->openHorizontalTab('content2', trans('app.content_ar'), '')
                ->addTextArea('', 'content_ar', 'content_ar', 'ar d:ar d:text-editor none')
                ->closeHorizontalTab()
                ->endHorizontalTab()
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
