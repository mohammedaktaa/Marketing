<?php

namespace Modules\Admin\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Attribute;
use App\Models\Category;
use App\Models\City;
use App\Models\FontAwesome;
use App\Models\MenuItem;
use App\Models\Page;
use App\Models\Tag;
use App\User;
use Illuminate\Http\Request;

class AutoCompleteController extends Controller
{
    public function categoryAutocomplete(Request $request)
    {
        $q = str_replace(' ', '%', $request->get('q', ''));
        $data = Category::whereRaw('upper(name_' . $this->lang . ') like upper(\'%' . $q . '%\')')
            ->get(['name_' . $this->lang . ' as name', 'category_id as id']);
        return ['items' => $data];
    }
    public function menuItemAutocomplete(Request $request)
    {
        $q = str_replace(' ', '%', $request->get('q', ''));
        $data = MenuItem::whereRaw('upper(name_' . $this->lang . ') like upper(\'%' . $q . '%\')')->where('is_root','Y')
            ->get(['name_' . $this->lang . ' as name', 'menu_item_id as id']);
        return ['items' => $data];
    }
    public function attributeAutocomplete(Request $request)
    {
        $q = str_replace(' ', '%', $request->get('q', ''));
        $data = Attribute::whereRaw('upper(text) like upper(\'%' . $q . '%\')')
            ->get(['text as name', 'attribute_id as id']);
        return ['items' => $data];
    }
    public function pageAutocomplete(Request $request)
    {
        $q = str_replace(' ', '%', $request->get('q', ''));
        $data = Page::whereRaw('upper(page_name) like upper(\'%' . $q . '%\')')
            ->get(['page_name as name', 'page_id as id']);
        return ['items' => $data];
    }
    public function iconAutocomplete(Request $request)
    {
        $q = str_replace(' ', '%', $request->get('q', ''));
        $data = FontAwesome::whereRaw('upper(content) like upper(\'%' . $q . '%\')')
            ->get(['content as name', 'icon as id']);
        return ['items' => $data];
    }
    public function cityAutocomplete(Request $request)
    {
        $q = str_replace(' ', '%', $request->get('q', ''));
        $data = City::whereRaw('upper(cities.name_' . $this->lang . ') like upper(\'%' . $q . '%\')');
        return ['items' => $data->get(['name_' . $this->lang . ' as name', 'city_id as id'])];
    }
    public function tagsAutocomplete(Request $request)
    {
        $q = str_replace(' ', '%', $request->get('q', ''));
        $data = Tag::whereRaw('upper(name_' . $this->lang . ') like upper(\'%' . $q . '%\')');
        return ['items' => $data->get(['name_' . $this->lang . ' as name', 'tag_id as id'])];
    }
    public function usersAutocomplete(Request $request)
    {
        $q = str_replace(' ', '%', $request->get('q', ''));
        $data = User::whereRaw('upper(name) like upper(\'%' . $q . '%\')');
        return ['items' => $data->get(['name as name', 'id as id'])];
    }

}
