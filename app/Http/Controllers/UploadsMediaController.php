<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Upload;


class UploadsMediaController extends Controller
{
    function media_library_admin(){
        $page['title'] = 'Show All Media Files';
        return view('backend.modules.media.show', compact('page'));
    }

    function uploads(Request $request){
        $type = array(
            "jpg"=>"image",
            "jpeg"=>"image",
            "png"=>"image",
            "svg"=>"image",
            "webp"=>"image",
            "gif"=>"image",
            "mp4"=>"video",
            "mpg"=>"video",
            "mpeg"=>"video",
            "webm"=>"video",
            "ogg"=>"video",
            "avi"=>"video",
            "mov"=>"video",
            "flv"=>"video",
            "swf"=>"video",
            "mkv"=>"video",
            "wmv"=>"video",
            "wma"=>"audio",
            "aac"=>"audio",
            "wav"=>"audio",
            "mp3"=>"audio",
            "zip"=>"archive",
            "rar"=>"archive",
            "7z"=>"archive",
            "doc"=>"document",
            "txt"=>"document",
            "docx"=>"document",
            "pdf"=>"document",
            "csv"=>"document",
            "xml"=>"document",
            "ods"=>"document",
            "xlr"=>"document",
            "xls"=>"document",
            "xlsx"=>"document"
        );
        if($request->TotalFiles > 0){
            for ($x = 0; $x < $request->TotalFiles; $x++){
                if($request->hasFile('files'.$x)){
                    $upload = new Upload;
                    $upload->file_original_name = null;
                    $arr = explode('.', $request->file('files'.$x)->getClientOriginalName());

                    for($i=0; $i < count($arr)-1; $i++){
                        if($i == 0){
                            $upload->file_original_name .= $arr[$i];
                        }
                        else{
                            $upload->file_original_name .= ".".$arr[$i];
                        }
                    }
                    $upload->file_path = $request->file('files'.$x)->store('uploads/media');
                    $upload->user_id = 1;
                    $upload->extension = strtolower($request->file('files'.$x)->getClientOriginalExtension());
                    if(isset($type[$upload->extension])){
                        $upload->type = $type[$upload->extension];
                    }
                    else{
                        $upload->type = "others";
                    }
                    $upload->file_size = $request->file('files'.$x)->getSize();
                    $upload->file_title = $upload->file_original_name;
                    $upload->save();

                    
                }
            }
            return response()->json(['status' => 'success', 'content' => 'Thank you for update data.']);
        }
    
    }

    function files_gets_admin(Request $request){
        $user_id = $request->user_id;
        $search = $request->search;

        $sort = $request->sort;
        $data = Upload::where('user_id', $user_id);
        if($search != ''){
            $data->where('file_title', 'like', '%'.$search.'%');
        }
       
        if($sort != ''){
            switch ($request->sort) {
                case 'newest':
                    $data->orderBy('created_at', 'desc');
                    break;
                case 'oldest':
                    $data->orderBy('created_at', 'asc');
                    break;
                case 'smallest':
                    $data->orderBy('file_size', 'asc');
                    break;
                case 'largest':
                    $data->orderBy('file_size', 'desc');
                    break;
                default:
                    $data->orderBy('created_at', 'desc');
                    break;
            }
        }
        $data = $data->get();
        return view('backend.partials.media_items', compact('data')); 
    }

    function files_destroy_admin(Request $request){

        if(file_exists(public_path().'/'.Upload::where('id', $request->id)->first()->file_path)){
            unlink(public_path().'/'.Upload::where('id', $request->id)->first()->file_path);
        }
        Upload::destroy($request->id);
        return ['status'=> true] ;

    }
}
