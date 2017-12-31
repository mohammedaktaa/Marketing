<?php

namespace App\Factories;

use App\Models\Product;
use App\User;
use Aut\DataTable\DataTableBuilder;
use Aut\DataTable\Factories\GlobalFactory;

class UserFactory extends GlobalFactory
{

    protected $admin=[];
    public function __construct(DataTableBuilder $table)
    {
        parent::__construct($table);
        $this->admin=['0'=>trans('app.no'),
            '1'=>trans('app.yes')];
    }

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('users')
            ->queryDatatable($query)
            ->queryUpdateButton('id')
            ->queryCustomButton('update_image', 'id', 'fa fa-image', '', "href='javascript:void(0)' onclick='admin_update_image(this)'")
            ->queryAddColumn('image',function ($item) use($model){
                return '<img src="' . ($item->image ? asset(User::IMAGE_File_PATH . $item->image) : '') . '" />';
            })
            ->queryAddColumn('admin',function ($item){
                return $this->admin[$item->is_admin];
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('users')
                ->addHiddenInput('id', 'id', '', true)
                ->addInputText(trans('app.name'), 'name', 'name', 'req required')
                ->addInputText(trans('app.phone'), 'phone', 'phone', 'req required')
                ->addInputText(trans('app.email'), 'email', 'email', 'req required')
                ->addViewField(trans('app.account'), 'account_money', 'account_money', 'account_money')
                ->addSelect($this->admin,trans('app.is_admin'), 'is_admin', 'is_admin', 'admin','req required')
                ->addViewField('', 'image', 'image', '', 'none')
                ->addActionButton(trans('app.update_image'), 'update_image', 'update_image')
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
