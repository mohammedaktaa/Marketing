<?php

namespace App\Factories;

use App\Models\Client;
use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;
use LaravelLocalization;

class ClientFactory extends GlobalFactory
{
    protected $yesNo = [];

    public function __construct(DataTableBuilder $table)
    {
        parent::__construct($table);
        $this->yesNo=['Y'=>trans('app.yes'),'N'=>trans('app.no')];
    }

    public function position()
    {
        $position = '';
        if (LaravelLocalization::getCurrentLocaleDirection() == 'rtl')
            $position = 'right';
        else
            $position = 'left';
        return $position;

    }

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('clients')
            ->queryDatatable($query)
            ->queryUpdateButton('client_id')
            ->queryDeleteButton('client_id')
            ->queryCustomButton('update_image', 'client_id', 'fa fa-image', '', "href='javascript:void(0)' onclick='admin_update_image(this)'")
            ->queryAddColumn('logo', function ($item) use ($model) {
                return '<img src="' . ($item->logo ? asset(Client::LOGO_File_PATH . $item->logo) : '') . '" />';
            })
            ->queryAddColumn('yesNo',function ($item){
                return $this->yesNo[$item->active];
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        return \Datatable::config('clients', '', ['gridSystem' => true])
            ->addHiddenInput('client_id', 'client_id', '', true)
            ->addInputText(trans('app.name_en'), 'name_en', 'name_en', 'en d:en req required')
            ->addInputText(trans('app.name_ar'), 'name_ar', 'name_ar', 'ar d:ar req required')
            ->addInputText(trans('app.website'), 'website', 'website', '')
            ->addInputText(trans('app.order'), 'order_num', 'order_num', '')
            ->addSelect($this->yesNo,trans('app.active'), 'active', 'active', 'yesNo')
            ->addViewField('', 'logo', 'logo', '', 'none')
            ->addActionButton(trans('app.update_image'), 'update_image', 'update_image')
            ->addActionButton($this->update, 'update', 'update')
            ->addActionButton($this->delete, 'delete', 'delete')
            ->addNavButton([], ['code'])
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
