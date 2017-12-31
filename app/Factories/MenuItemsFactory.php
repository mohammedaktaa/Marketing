<?php

namespace App\Factories;

use App\Models\MenuItem;
use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;

class MenuItemsFactory extends GlobalFactory
{
    protected $types=[];
    protected $yesNo=[];

    public function __construct(DataTableBuilder $table)
    {
        parent::__construct($table);
        $this->types=[
            'I'=>trans('app.internal'),
            'E'=>trans('app.external'),
            'V'=>trans('app.view')
        ];
        $this->yesNo = [
            'Y' => trans('admin::main.yes'),
            'N' => trans('admin::main.no')
        ];
    }

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::with(['parent'])->orderBy('order');
        return \Datatable::queryConfig('menu_items')
            ->queryDatatable($query)
            ->queryUpdateButton('menu_item_id')
            ->queryDeleteButton('menu_item_id')
            ->queryAddColumn('types', function ($item) {
                return $this->types[$item->type];
            })
            ->queryAddColumn('is_root_view', function ($item) {
                return $this->yesNo[$item->is_root];
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        return \Datatable::config('menu_items')
            ->addHiddenInput('menu_item_id', 'menu_item_id', '', true)
            ->addInputText(trans('app.name_en'), 'name_en', 'name_en','en d:en req required')
            ->addInputText(trans('app.name_ar'), 'name_ar', 'name_ar','ar d:ar req required')
            ->addInputText(trans('app.target'), 'target', 'target','')
            ->addSelect($this->types, trans('app.type'), 'type','type','types','req required')
            ->addInputText(trans('app.menu_item_order'), 'order', 'order','req required')
            ->addSelect($this->yesNo,trans('app.is_root') , 'is_root', 'is_root', 'is_root_view',' req required')
            ->addAutocomplete('admin/menu-items-autocomplete',trans('app.parent'),'parent_id','parent_id','parent.name_'.\App::getLocale())
            ->addInputText(trans('app.target_extra'), 'target_extra', 'target_extra','')
            ->addActionButton($this->update, 'update', 'update')
            ->addActionButton($this->delete, 'delete', 'delete')
            ->addNavButton([],['code'])
            ->render();

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
