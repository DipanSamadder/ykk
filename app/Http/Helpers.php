<?php
use  App\Models\Translation;
use  App\Models\BusinessSetting;
use  App\Models\Upload;
use  App\Models\PostCategory;
use  App\Models\PageMeta;



//Get Post Parent Category Nmae
if(!function_exists('dsld_post_parent_name_by_id')){
    function dsld_post_parent_name_by_id($id){
        $data = PostCategory::where('id', $id)->first();

        if( $data != ''){
            return $data->title;
        }else{
            return 'Null';
        }
        
    }
}

//Get Post Parent Category Nmae
if(!function_exists('dsld_page_meta_value_by_meta_key')){
    function dsld_page_meta_value_by_meta_key($meta_key = '', $page_id){
        $data = PageMeta::where('meta_key', $meta_key)->where('page_id', $page_id)->first();

        if( $data != ''){
            return $data->meta_value;
        }else{
            return 'Null';
        }
        
    }
}


if(!function_exists('dsld_is_route_active')){
    function dsld_is_route_active(Array $routes, $output = 'active'){
        foreach($routes as $route){
            if(Route::currentRouteName() == $route) return $output;
        }
    }
}


//return file uploaded via uploader
if (!function_exists('dsld_uploaded_asset')) {
    function dsld_uploaded_asset($id)
    {
        if (($asset = Upload::find($id)) != null) {
            return my_asset($asset->file_path);
        }
        return null;
    }
}
//return file uploaded via uploader
if (!function_exists('dsld_upload_file_title')) {
    function dsld_upload_file_title($id)
    {
        if (($asset = Upload::find($id)) != null) {
            return $asset->file_title;
        }
        return null;
    }
}

if (! function_exists('my_asset')) {
    /**
     * Generate an asset path for the application.
     *
     * @param  string  $path
     * @param  bool|null  $secure
     * @return string
     */
    function my_asset($path, $secure = null)
    {
        if(env('FILESYSTEM_DRIVER') == 's3'){
            return Storage::disk('s3')->url($path);
        }
        else {
            return app('url')->asset($path, $secure);
        }
    }
}

if(!function_exists('dsld_get_setting')){
    function dsld_get_setting($key, $default = null){
        $data = BusinessSetting::where('type', $key)->first();
        return $data == null ? $default : $data->value; 
    }
}

if(!function_exists('dsld_translation')){
    function dsld_translation($key, $lang = null){
        if($lang == null){
            $lang = App::getLocale();
        }
        $check_data = Translation::where('lang', env("DEFAULT_LANGUAGE", "en"))->where('lang_key', $key)->first();
        if($check_data == null){
            $data = new Translation;
            $data->lang = env("DEFAULT_LANGUAGE", "en");
            $data->lang_key = $key;
            $data->lang_value = $key;
            $data->save();
        }

        $get_value = Translation::where('lang_key', $key)->where('lang', $lang)->first();
        if($get_value != null){
            return $get_value->lang_value;
        }else{
            return $check_data->lang_value;
        }
    }
}

if(! function_exists('dsld_default_language')){
    function dsld_default_language(){
        return env("DEFAULT_LANGUAGE");
    }
}


if(!function_exists('dsld_static_asset')){
        /**
     * Generate an asset path for the application.
     *
     * @param  string  $path
     * @return string
     */
    function dsld_static_asset($path = null){
        return app('url')->asset($path, '');
    }
}


?>