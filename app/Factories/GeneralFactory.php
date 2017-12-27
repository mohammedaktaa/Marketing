<?php

namespace App\Factories;

use App\Models\CmpGeneral;
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
//            'slider_state'=>trans('app.slider_state'),
            'project_name'=>trans('app.name_project'),
            'logo'=>trans('app.logo')
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
            ->queryCustomButton('update_image', 'id', 'fa fa-image', '', "href='javascript:void(0)' onclick='admin_update_image(this)'")
            ->queryAddColumn('image',function ($item) use($model){
//                dd($item->logo);
                return '<img src="' . ($item->image ? asset(CmpGeneral::IMAGE_File_PATH . $item->image) : '') . '" />';
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
                ->addInputText(trans('app.value'), 'value', 'value', ' ')
                ->addViewField('', 'image', 'image', '', 'none')
                ->addActionButton(trans('app.update_image'), 'update_image', 'update_image')
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
