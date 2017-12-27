<?php

namespace Modules\Admin\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\CmpGeneral;
use App\Models\Course;
use App\Models\Manager;
use App\Models\Product;
use App\Models\Team;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Intervention\Image\ImageManager;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index()
    {
        return view('admin::index');
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create()
    {
        return view('admin::create');
    }

    /**
     * Store a newly created resource in storage.
     * @param  Request $request
     * @return Response
     */
    public function store(Request $request)
    {
    }

    /**
     * Show the specified resource.
     * @return Response
     */
    public function show()
    {
        return view('admin::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @return Response
     */
    public function edit()
    {
        return view('admin::edit');
    }

    /**
     * Update the specified resource in storage.
     * @param  Request $request
     * @return Response
     */
    public function update(Request $request)
    {
    }

    /**
     * Remove the specified resource from storage.
     * @return Response
     */
    public function destroy()
    {
    }
    function moveFileFromTemp($newPath, $name, $newName = '')
    {
        if ($newName == '') $newName = $name;
        \File::move(storage_path('app\\public\\temp\\' . $name), storage_path('app\\public\\' . str_replace('/', '\\', $newPath)) . $newName);
    }
    public function table($table, $hasExtra = false)
    {
        $tableName = $table . '-table';
        return view('admin::table', compact('tableName', 'title', 'hasExtra', 'table'));
    }

    public function uploadImage(Request $request, $resize = false)
    {
        $this->validate($request, [
            'image' => 'mimes:jpeg,jpg,bmp,png,mp4,avi,flv|max:100000',
            'upload' => 'image|max:100000',//For CKEditor
            'image_url' => 'max:10000000',//For Crop
        ]);
        $manager = new ImageManager(array('driver' => 'gd'));
        $image = $manager->make($request->files->get('image', $request->get('image_url', $request->get('upload', ''))));
        if ($resize == 'image') {
            $resize = $image->resize(247, 179);
            $fileTempName = $request->get('name') ? $request->get('name') . sha1(time(). (int)rand(10, 100)) .'.' . explode('/', $resize->mime())[1] : $request->get('image') .sha1(time(). (int)rand(10, 100)) . '.' . explode('/', $resize->mime())[1];
        } else {
            $fileTempName = $request->get('name') ? $request->get('name') .sha1(time(). (int)rand(10, 100)) . '.' . explode('/', $image->mime())[1]:$request->get('image') .sha1(time(). (int)rand(10, 100)) . '.' . explode('/', $image->mime())[1];
        }
//        dd($fileTempName);
        $image->save(storage_path('app\\public\\temp\\' . $fileTempName));
        return ['success' => true, 'filename' => $fileTempName, 'fileurl' => url('storage/temp/' . $fileTempName)];
    }
    /**** images Update****/

    public function updateImageCourses($id, Request $request)
    {
        $course = Course::find($id);
        if ($request->get('image') != $course->image) {
            \File::delete($course->getImageFileSystem());
          $this->moveFileFromTemp(Course::IMAGE_URL_PATH, $request->get('image'));
        }
        $course->update($request->input());
    }
    public function updateImageProducts($id, Request $request)
    {
        $product = Product::find($id);
        if ($request->get('image') != $product->image) {
            \File::delete($product->getImageFileSystem());
          $this->moveFileFromTemp(Product::IMAGE_URL_PATH, $request->get('image'));
        }
        $product->update($request->input());
    }
    public function updateImageTeam($id, Request $request)
    {
        $team = Team::find($id);
        if ($request->get('image') != $team->image) {
            \File::delete($team->getImageFileSystem());
          $this->moveFileFromTemp(Team::IMAGE_URL_PATH, $request->get('image'));
        }
        $team->update($request->input());
    }
    public function updateImageGenerals($id, Request $request)
    {
        $general = CmpGeneral::find($id);
        if ($request->get('image') != $general->image) {
            \File::delete($general->getImageFileSystem());
          $this->moveFileFromTemp(CmpGeneral::IMAGE_URL_PATH, $request->get('image'));
        }
        $general->update($request->input());
    }
    public function updateImageManager($id, Request $request)
    {
        $manager = Manager::find($id);
        if ($request->get('image') != $manager->image_manager) {
            \File::delete($manager->getImageFileSystem());
          $this->moveFileFromTemp(Manager::IMAGE_URL_PATH, $request->get('image'));
        }
        $manager->image_manager=$request->get('image');
        $manager->save();
    }

}
