<?php

namespace App\Factories;

use App\Models\Course;
use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class CourseFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('courses')
            ->queryDatatable($query)
            ->queryUpdateButton('course_id')
            ->queryDeleteButton('course_id')
            ->queryCustomButton('update_image', 'id', 'fa fa-image', '', "href='javascript:void(0)' onclick='admin_update_image(this)'")
            ->queryAddColumn('image',function ($item) use($model){
                return '<img src="' . ($item->image ? asset(Course::IMAGE_File_PATH . $item->image) : '') . '" />';
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('courses')
                ->addHiddenInput('course_id', 'course_id', '', true)
                ->addInputText(trans('app.title').' '.trans('app._en'), 'title_en', 'title_en', 'en d:en req required')
                ->addInputText(trans('app.title').' '.trans('app._ar'), 'title_ar', 'title_ar', 'ar d:ar req required')
                ->addInputText(trans('app.date'), 'date', 'date', 'req required d:datepicker')
                ->addInputText(trans('app.place'), 'place', 'place', 'req required')
                ->addInputText(trans('app.time'), 'time', 'time', 'req required d:time')
                ->addViewField('', 'image', 'image', '', 'none')
                ->addActionButton(trans('app.update_image'), 'update_image', 'update_image')
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
                ->addNavButton()
                ->onModalOpen('_datePicker($(modal));_timePicker($(modal))')
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
