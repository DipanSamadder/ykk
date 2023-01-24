<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RolePermission;
use Validator;

class RolePermissionsController extends Controller
{
    public function index(){
        $page['title'] = 'Show all permissions';
        return view('backend.modules.roles.permissions.show', compact('page'));
    }
    public function get_ajax_permissions(Request $request){
        if($request->page != 1){$start = $request->page * 4;}else{$start = 0;}
        $search = $request->search;
        $sort = $request->sort;

        $data = RolePermission::where('name','!=','');
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
                default:
                    $data->orderBy('created_at', 'desc');
                    break;
            }
        }
        $data = $data->skip($start)->paginate(4);
        return view('backend.modules.roles.permissions.ajax_permissions', compact('data'));
    }
    public function store(Request $request){

        $keys = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->name));

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:50',
        ]);


        if($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => $validator->errors()->all()]);
        }

     
        if(RolePermission::where('keys', $keys)->first() == null){
            $permission =  new RolePermission;
            $permission->name = $request->name;
            $permission->keys = strtolower($keys);
            if($permission->save()){
                $arr = array('Add', 'Edit', 'Delete');
                foreach($arr as $value){
                    $permissions =  new RolePermission;
                    $permissions->name = $request->name.' '.$value;
                    $permissions->parent_id = $permission->id;
                    $permissions->keys = strtolower($keys).'_'.strtolower(preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $value)));
                    $permissions->save();
                }
                return response()->json(['status' => 'success', 'message'=> 'Data insert success.']);
            }else{
                return response()->json(['status' => 'error', 'message'=> 'Data insert failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message'=> 'Details already exist! please try agin.']);
        }
    }
    public function edit($id){
        $data = RolePermission::where('id', $id)->first();
        $page['title'] = 'Edit Data';
        return view('backend.modules.roles.permissions.edit', compact('data', 'page'));
    }
    
    public function update(Request $request){

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:50',
        ]);


        if($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => $validator->errors()->all()]);
        }
     
        if(RolePermission::whereNotIn('id', [$request->id])->where('name', $request->name)->first() == null){
            $permission =  RolePermission::findOrFail($request->id);
            $permission->name = $request->name;
            $permission->created_at = $request->date;
            
            if($permission->save()){
                return response()->json(['status' => 'success', 'message'=> 'Data update success.']);
            }else{
                return response()->json(['status' => 'error', 'message'=> 'Data update failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message'=> 'Details already exist! please try agin.']);
        }

    }
    public function destory(Request $request){
        $permission = RolePermission::findOrFail($request->id);
        if($permission != ''){
            if($permission->delete()){
                return response()->json(['status' => 'success', 'message' => 'Data deleted successully.']);
            }else{
                return response()->json(['status' => 'error', 'message' => 'Data deleted failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message' => 'Data Not found.']);
        }
       
    }
    
    public function status(Request $request){
        $permission = RolePermission::findOrFail($request->id);
        if($permission != ''){
            if($permission->status != $request->status){
                $permission->status = $request->status;
                $permission->save();
                return response()->json(['status' => 'success', 'message' => 'Status update successully.']);
            }else{
                return response()->json(['status' => 'error', 'message' => 'Status update failed.']);
            }
        }else{
            return response()->json(['status' => 'warning', 'message' => 'Data Not found.']);
        }
       
    }
}
