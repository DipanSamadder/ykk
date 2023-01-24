<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menu;
use Validator;
class MenuController extends Controller
{
    public function index(){
        $page['title'] = 'Show all menus';
        return view('backend.modules.menus.show', compact('page'));
    }
    public function get_ajax_menus(Request $request){
        if($request->page != 1){$start = $request->page * 4;}else{$start = 0;}
        $search = $request->search;
        $sort = $request->sort;

        $data = Menu::where('name','!=','');
        if($search != ''){
            $data->where('name', 'like', '%'.$search.'%');
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
                    $data->where('status', 0);
                    break;
                case 'deactive':
                    $data->where('status', 1);
                    break;
                default:
                    $data->orderBy('created_at', 'desc');
                    break;
            }
        }
        $data = $data->skip($start)->paginate(4);
        return view('backend.modules.menus.ajax_menus', compact('data'));
    }
    public function store(Request $request){

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:50',
        ]);


        if($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => $validator->errors()->all()]);
        }

     
        if(Menu::where('name', $request->name)->first() == null){
            $menu =  new Menu;
            $menu->name = $request->name;
            $menu->url = $request->url;
            $menu->parent = $request->parent;
            $menu->user_id = $request->user_id;
            $menu->setting = json_encode(array('target' => "0", 'class' => ""));
            
            if($menu->save()){
                return response()->json(['status' => 'success', 'message'=> 'Data insert success.']);
            }else{
                return response()->json(['status' => 'error', 'message'=> 'Data insert failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message'=> 'Details already exist! please try agin.']);
        }
    }
    public function edit($id){
        $data = Menu::where('id', $id)->first();
        $page['title'] = 'Edit Data';
        return view('backend.modules.menus.edit', compact('data', 'page'));
    }
    public function menus_ordering($type){
        $data = Menu::where('type', $type)->first();
        $page['title'] = 'Edit Type';
        return view('backend.modules.menus.ordering', compact('data', 'page'));
    }
    
    public function update(Request $request){

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:50',
            'url' => 'required|string|max:50',
        ]);


        if($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => $validator->errors()->all()]);
        }
     
        if(Menu::whereNotIn('id', [$request->id])->where('name', $request->name)->first() == null){
            $menu =  Menu::findOrFail($request->id);
            $menu->name = $request->name;
            $menu->url = $request->url;
            $menu->parent = $request->parent;
            $menu->level = $this->menu_parent_level($request->parent);
            $menu->type = $request->type;
            $menu->order = $request->order;
            $menu->setting = json_encode(array('target' => $request->target, 'class' => $request->class_name));
            $menu->status = $request->status;
            $menu->created_at = $request->date;
            
            if($menu->save()){
                return response()->json(['status' => 'success', 'message' => 'Data update success.']);
            }else{
                return response()->json(['status' => 'error', 'message' => 'Data update failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message' => 'Details already exist! please try agin.']);
        }

    }

    public function menu_parent_level($parent_id){
        if($parent_id > 0){
            return Menu::where('id', $parent_id)->first()->level + 1;
        }else{
            return 1;
        } 
    }
    public function destory(Request $request){
        $menu = Menu::findOrFail($request->id);
        if($menu != ''){
            if($menu->delete()){
                return response()->json(['status' => 'success', 'message' => 'Data deleted successully.']);
            }else{
                return response()->json(['status' => 'error', 'message' => 'Data deleted failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message' => 'Data Not found.']);
        }
       
    }

    public function status(Request $request){
        $menu = Menu::findOrFail($request->id);
        if($menu != ''){
            if($menu->status != $request->status){
                $menu->status = $request->status;
                $menu->save();
                return response()->json(['status' => 'success', 'message' => 'Status update successully.']);
            }else{
                return response()->json(['status' => 'error', 'message' => 'Status update failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message' => 'Data Not found.']);
        }
       
    }
}
