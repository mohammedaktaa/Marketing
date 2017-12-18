<?php

namespace App\Factories;

use App\Models\Team;
use Aut\DataTable\Factories\GlobalFactory;

class TeamsFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::all();
        return \Datatable::queryConfig('team')
            ->queryDatatable($query)
            ->queryUpdateButton('team_id')
            ->queryDeleteButton('team_id')
            ->queryCustomButton('update_image', 'id', 'fa fa-image', '', "href='javascript:void(0)' onclick='admin_update_image(this)'")
            ->queryAddColumn('image',function ($item) use($model){
                return $item->image?'<img src="' . ($item->image ? asset(Team::IMAGE_File_PATH . $item->image) : '') . '" />':'';
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        return \Datatable::config('team','',['gridSystem'=>true,'dialogWidth'=>'60%'])
            ->addHiddenInput('team_id', 'team_id', '', true)
            ->addInputText(trans('app.name_en'), 'name_en', 'name_en','en d:en req required')
            ->addInputText(trans('app.name_ar'), 'name_ar', 'name_ar','ar d:ar req required')
            ->addInputText(trans('app.job_title_en'), 'job_title_en', 'job_title_en','en d:en req required')
            ->addInputText(trans('app.job_title_ar'), 'job_title_ar', 'job_title_ar','ar d:ar req required')
            ->addInputText(trans('app.facebook'), 'facebook', 'facebook','req required')
            ->addInputText(trans('app.google'), 'google', 'google','req required')
            ->addInputText(trans('app.linkedin'), 'linkedin', 'linkedin','req required')
            ->addInputText(trans('app.team_order'), 'team_order', 'team_order','req required')
            ->addViewField(trans('app.image'), 'image', 'image','','none')
            ->addActionButton(trans('app.update_image'), 'update_image', 'update_image')
            ->addActionButton($this->update, 'update', 'update')
            ->addActionButton($this->delete, 'delete', 'delete')
            ->addNavButton()
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
