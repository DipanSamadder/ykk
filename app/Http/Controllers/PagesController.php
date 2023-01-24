<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Page;
use Validator;


class PagesController extends Controller
{
    public function index(){
        $page['title'] = 'Show all pages';
        return view('backend.modules.pages.show', compact('page'));
    }
    public function get_ajax_pages(Request $request){
        if($request->page != 1){$start = $request->page * 4;}else{$start = 0;}
        $search = $request->search;
        $sort = $request->sort;

        $data = Page::where('type','custom_page');
        if($search != ''){
            $data->where('title', 'like', '%'.$search.'%');
        }
       
        if($sort != ''){
            switch ($request->sort) {
                case 'newest':
                    $data->orderBy('created_at', 'desc');
                    break;
                case 'oldest':
                    $data->orderBy('created_at', 'asc');
                    break;
                case 'active':
                    $data->where('status', 1);
                    break;
                case 'deactive':
                    $data->where('status', 0);
                    break;
                default:
                    $data->orderBy('created_at', 'desc');
                    break;
            }
        }
        $data = $data->skip($start)->paginate(4);
        return view('backend.modules.pages.ajax_pages', compact('data'));
    }
    public function store(Request $request){
        $slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->title));


        $validator = Validator::make($request->all(), [
            'title' => 'required|max:50',
            'status' => 'required|integer'
        ]);


        if($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => $validator->errors()->all()]);
        }

     
        if(Page::where('slug', strtolower($slug))->first() == null){
            $page = new Page;
            $page->title = $request->title;
            $page->meta_title = $request->title;
            $page->meta_description =  $request->title;
            $page->keywords =  $request->title;
            $page->type = 'custom_page';
            $page->template = 'pages';
            $page->is_meta = 0;
            $page->banner = $request->banner;
            $page->status = $request->status;
            $page->content = $request->content;
            $page->slug = strtolower($slug);
            
            if($page->save()){
                return response()->json(['status' => 'success', 'message'=> 'Data insert success.']);
            }else{
                return response()->json(['status' => 'error', 'message'=> 'Data insert failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message'=> 'Page & slug already exist! please try agin.']);
        }
    }
    public function edit($id){
        $data = Page::where('id', $id)->first();
        $page['title'] = 'Edit Data';
        return view('backend.modules.pages.edit', compact('data', 'page'));
    }
    
    public function show_custom_page($slug){
        $page = Page::where('slug', $slug)->first();
        if($page != null){
            return view('frontend.pages.default_template', compact('page'));
            // if($page->template != null){
            //         return view('frontend.pages.'.$page->template, compact('page'));
            // }else{
            //     return view('frontend.pages.common_page', compact('page'));
            // }
        }
    }
    public function update(Request $request){
        $slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->slug));


        $validator = Validator::make($request->all(), [
            'title' => 'required|max:50',
            'status' => 'required|integer'
        ]);


        if($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => $validator->errors()->all()]);
        }
     
        if(Page::whereNotIn('id', [$request->id])->where('slug', strtolower($slug))->first() == null){
            $page =  Page::findOrFail($request->id);
            $page->title = $request->title;
            $page->meta_title = $request->meta_title;
            $page->meta_description =  $request->meta_description;
            $page->keywords =  $request->keywords;
            $page->type = 'custom_page';
            $page->template = $request->template;
            $page->is_meta = 0;
            $page->order = $request->order;
            $page->banner = $request->banner;
            $page->status = $request->status;
            $page->created_at = $request->date;
            $page->content = $request->content;
            $page->slug = strtolower($slug);
            
            if($page->save()){
                return response()->json(['status' => 'success', 'message'=> 'Data update success.']);
            }else{
                return response()->json(['status' => 'error', 'message'=> 'Data update failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message'=> 'Page & slug already exist! please try agin.']);
        }

    }
    public function destory(Request $request){
        $page = Page::findOrFail($request->id);
        if($page != ''){
            if($page->delete()){
                return response()->json(['status' => 'success', 'message' => 'Data deleted successully.']);
            }else{
                return response()->json(['status' => 'error', 'message' => 'Data deleted failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message' => 'Data Not found.']);
        }
       
    }
    public function status(Request $request){
        $page = Page::findOrFail($request->id);
        if($page != ''){
            if($page->status != $request->status){
                $page->status = $request->status;
                $page->save();
                return response()->json(['status' => 'success', 'message' => 'Status update successully.']);
            }else{
                return response()->json(['status' => 'error', 'message' => 'Status update failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message' => 'Data Not found.']);
        }
       
    }
}
