@extends('backend.layouts.app')

{{-- Header section--}}
@section('header')

<link rel="stylesheet" href="{{ dsld_static_asset('backend/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css') }}">
<style>
    .bootstrap-tagsinput{    border: 1px solid #cbcbcb !important;width: 100%;}
</style>
@endsection

{{-- Content section--}}
@section('content')

    <!-- Basic Validation -->
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="card">
                <div class="header">
                    <h2><strong>Site</strong> Setting</h2>
                </div>
                <div class="body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs p-0 mb-3 nav-tabs-success" role="tablist">
                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home_with_icon_title"> <i class="zmdi zmdi-home"></i> SITE INFO </a></li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#profile_with_icon_title"><i class="zmdi zmdi-settings"></i> SETTINGS </a></li>
                    </ul>
                    
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane in active" id="home_with_icon_title">
                            <form id="form_validation" action="{{ route('business.setting.update') }}" class="update_form" method="post"  enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label>Meta Title <small>(Default)</small></label>
                                            <input type="hidden" name="types[]"  value="site_title">
                                            <input type="text" class="form-control" placeholder="Title" name="site_title"  id="site_title" value="{{ dsld_get_setting('site_title') }}" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label>Meta Keyword</label><br>
                                            <input type="hidden" name="types[]" value="site_meta_keyword">
                                            <input type="text" class="form-control" placeholder="Meta Keyword" name="site_meta_keyword"  id="site_meta_keyword" data-role="tagsinput" value="{{ dsld_get_setting('site_meta_keyword') }}" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label>Meta Description</label>
                                            <input type="hidden" name="types[]" value="site_meta_description">
                                            <textarea class="form-control" placeholder="Meta Description" name="site_meta_description"  id="site_meta_description" required>{{ dsld_get_setting('site_meta_description') }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label">Logo</label>
                                            <input type="hidden" name="types[]" value="site_logo">
                                            <select class="form-control show-tick ms select2" name="site_logo" id="site_logo">
                                                <option value="">-- Please select --</option>
                                                @foreach(App\Models\Upload::where('user_id', Auth::user()->id)->where('type', 'image')->get() as $key => $value)
                                                    <option value="{{ $value->id }}" @if(dsld_get_setting('site_logo') == $value->id) selected @endif>({{ $value->id }}) - {{ $value->file_title}} </option>
                                                @endforeach
                                            </select>
                                            @if(dsld_get_setting('site_logo') > 0)
                                            <div class="image mt-2">
                                                <img src="{{ dsld_uploaded_asset(dsld_get_setting('site_logo')) }}"  alt="{{ dsld_upload_file_title(dsld_get_setting('site_logo')) }}" class="page_banner_icon">
                                            </div> 
                                            @endif                                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label">Fav Icon</label>
                                            <input type="hidden" name="types[]" value="site_fav_icon">
                                            <select class="form-control show-tick ms select2" name="site_fav_icon" id="site_fav_icon">
                                                <option value="">-- Please select --</option>
                                                @foreach(App\Models\Upload::where('user_id', Auth::user()->id)->where('type', 'image')->get() as $key => $value)
                                                    <option value="{{ $value->id }}" @if(dsld_get_setting('site_fav_icon') == $value->id) selected @endif>({{ $value->id }}) - {{ $value->file_title}} </option>
                                                @endforeach
                                            </select>
                                            @if(dsld_get_setting('site_fav_icon') > 0)
                                            <div class="image mt-2">
                                                <img src="{{ dsld_uploaded_asset(dsld_get_setting('site_fav_icon')) }}"  alt="{{ dsld_upload_file_title(dsld_get_setting('site_fav_icon')) }}" class="page_banner_icon">
                                            </div> 
                                            @endif                                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label">Login Background</label>
                                            <input type="hidden" name="types[]" id="types" value="site_login_background">
                                            <select class="form-control show-tick ms select2" name="site_login_background" id="site_login_background">
                                                <option value="">-- Please select --</option>
                                                @foreach(App\Models\Upload::where('user_id', Auth::user()->id)->where('type', 'image')->get() as $key => $value)
                                                    <option value="{{ $value->id }}" @if(dsld_get_setting('site_login_background') == $value->id) selected @endif>({{ $value->id }}) - {{ $value->file_title}} </option>
                                                @endforeach
                                            </select>
                                            @if(dsld_get_setting('site_login_background') > 0)
                                            <div class="image mt-2">
                                                <img src="{{ dsld_uploaded_asset(dsld_get_setting('site_login_background')) }}"  alt="{{ dsld_upload_file_title(dsld_get_setting('site_login_background')) }}" class="page_banner_icon">
                                            </div> 
                                            @endif                                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label">Registration Background</label>
                                            <input type="hidden" name="types[]" id="types" value="site_registration_background">
                                            <select class="form-control show-tick ms select2" name="site_registration_background" id="site_registration_background">
                                                <option value="">-- Please select --</option>
                                                @foreach(App\Models\Upload::where('user_id', Auth::user()->id)->where('type', 'image')->get() as $key => $value)
                                                    <option value="{{ $value->id }}" @if(dsld_get_setting('site_registration_background') == $value->id) selected @endif>({{ $value->id }}) - {{ $value->file_title}} </option>
                                                @endforeach
                                            </select>
                                            @if(dsld_get_setting('site_registration_background') > 0)
                                            <div class="image mt-2">
                                                <img src="{{ dsld_uploaded_asset(dsld_get_setting('site_registration_background')) }}"  alt="{{ dsld_upload_file_title(dsld_get_setting('site_registration_background')) }}" class="page_banner_icon">
                                            </div> 
                                            @endif                                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="swal-button-container">
                                            <button class="btn btn-raised btn-success btn-round waves-effect dsld-btn-loader" type="submit">Update</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="profile_with_icon_title">
                            <form id="form_validation" action="{{ route('business.setting.update') }}" class="update_form" method="post"  enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                   
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="swal-button-container">
                                            <button class="btn btn-raised btn-success btn-round waves-effect dsld-btn-loader" type="submit">Update</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
          
@endsection

{{-- Footer section--}}
@section('footer')

<!-- Jquery Core Js --> 
<script src="{{ dsld_static_asset('backend/assets/plugins/jquery-validation/jquery.validate.js') }}"></script> 
<script src="{{ dsld_static_asset('backend/assets/plugins/jquery-steps/jquery.steps.js') }}"></script> 
<script src="{{ dsld_static_asset('backend/assets/js/pages/forms/form-validation.js') }}"></script>
<script src="{{ dsld_static_asset('backend/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js') }}"></script>
<script>
// $(document).ready(function(){
//     $('.update_form').on('submit', function(event){
//     event.preventDefault();
//         alert($('.update_form').serialize());
//         $('#dsld-btn-loader').addClass('btnloading');
//        DSLDAjaxSubmit("{{ route('business.setting.update') }}", $('.update_form').serialize(), "POST", ".btnloading");
//     });
// });

   
</script>
<script>

$(document).ready(function(){
        $('.update_form').on('submit', function(event){
        event.preventDefault();
            $('.dsld-btn-loader').addClass('btnloading');
            var Loader = ".btnloading";
            DSLDButtonLoader(Loader, "start");
            $.ajax({
                url: $(this).attr('action'),
                type: $(this).attr('method'),
                cache : false,
                data: $(this).serialize(),
                success: function(data) {
                    DSLDButtonLoader(Loader, "");
                    dsldFlashNotification(data['status'], data['message']);
                    if(data['status'] =='success'){
                    }
                    
                }
            });
        });
    });
   
</script>
@endsection