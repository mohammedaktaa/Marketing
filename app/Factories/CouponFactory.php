<?php

namespace App\Factories;

use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class CouponFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('coupons')
            ->queryDatatable($query)
            ->queryUpdateButton('coupon_id')
            ->queryDeleteButton('coupon_id')
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('coupons')
                ->addHiddenInput('coupon_id', 'coupon_id', '', true)
                ->addInputText(trans('app.code'), 'code', 'code', 'req required')
                ->addInputText(trans('app.value'), 'value', 'value', 'req required')
                ->addInputText(trans('app.date'), 'expire_date', 'expire_date', 'req required d:datepicker')
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
