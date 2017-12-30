<?php

namespace App\Factories;

use App\Models\Blog;
use App\Models\Product;
use Aut\DataTable\Factories\GlobalFactory;

class BlogFactory extends GlobalFactory
{

    /**
     *  get datatable query
     */
    public function getDatatable($model, $request)
    {
        $query = $model::with(['tag','user'])->get();
        return  \Datatable::queryConfig('blogs')
            ->queryDatatable($query)
            ->queryUpdateButton('blog_id')
            ->queryDeleteButton('blog_id')
            ->queryCustomButton('update_image', 'id', 'fa fa-image', '', "href='javascript:void(0)' onclick='admin_update_image(this)'")
            ->queryAddColumn('image',function ($item) use($model){
                return '<img src="' . ($item->image ? asset(Blog::IMAGE_File_PATH . $item->image) : '') . '" />';
            })
            ->queryRender();
    }

    /**
     *  build datatable modal and table
     */
    public function buildDatatable($model, $request)
    {
        try {
            return \Datatable::config('blogs')
                ->addHiddenInput('blog_id', 'blog_id', '', true)
                ->addInputText(trans('app.title'), 'title', 'title', 'req required')
                ->addInputText(trans('app.content'), 'content', 'content', 'req required d:text-editor')
                ->addAutocomplete('admin/tags-autocomplete', trans('app.tags'), 'tag_id', 'tag_id', 'tag.name_' . \App::getLocale(),'req required')
                ->addAutocomplete('admin/users-autocomplete', trans('app.users'), 'user_id', 'user_id', 'user.name','req required')
                ->addViewField('', 'image', 'image', '', 'none')
                ->addActionButton(trans('app.update_image'), 'update_image', 'update_image')
                ->addActionButton($this->update, 'update', 'update')
                ->addActionButton($this->delete, 'delete', 'delete')
                ->addNavButton()
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
