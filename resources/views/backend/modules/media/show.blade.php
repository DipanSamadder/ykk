@extends('backend.layouts.app')

@section('header')
<link rel="stylesheet" href="{{ dsld_static_asset('backend/assets/plugins/footable-bootstrap/css/footable.bootstrap.min.css') }}">
<link rel="stylesheet" href="{{ dsld_static_asset('backend/assets/plugins/footable-bootstrap/css/footable.standalone.min.css') }}">
@endsection

@section('content')
<div class="row clearfix">
    <div class="col-lg-6">
        <button class="btn btn-success btn-round mb-4" data-toggle="modal" data-target="#DSLDImageUpload" title="Add Media"><i class="zmdi zmdi-hc-fw"></i> Add New</button>
        <button class="btn btn-info btn-round mb-4" onclick="get_files();"><i class="zmdi zmdi-hc-fw"></i> Reload</button>
    </div>
    <div class="col-lg-6">
    <form class="form-inline" id="search_media">
        <!-- <div class="form-group">                                
            <input type="date" class="form-control ms  mr-2" name="get_date" onchange="filter()">
        </div> -->
        <div class="col-lg-6">
            <div class="form-group">                                
                <select class="form-control" name="sort" onchange="filter()">
                    <option value="newest">New to Old</option>
                    <option value="oldest">Old to New</option>
                    <option value="smallest">Samllest</option>
                    <option value="largest">Largest</option>
                </select>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">                                    
                <input type="text" class="form-control" name="search" onblur="filter()" placeholder="Search File name">
            </div>
        </div>
    </form>
    </div>
    <div class="col-lg-12">
        <div class="card">
            <!-- <ul class="nav nav-tabs pl-0 pr-0">
                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#list_view">List View</a></li>
                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#grid_view">Grid View</a></li>
            </ul> -->
            <div class="tab-content">
                <!-- <div class="tab-pane active" id="list_view">
                    <div class="table-responsive">
                        <table class="table table-hover mb-0 c_table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th data-breakpoints="xs">Owner</th>
                                    <th data-breakpoints="xs sm md">Last Modified</th>
                                    <th data-breakpoints="xs">File size</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><span><i class="zmdi zmdi-folder w25"></i> My Projects</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Mar 26, 2019</span></td>
                                    <td><span class="size">-</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-folder w25"></i> Sample Website proposals</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Apr 09, 2019</span></td>
                                    <td><span class="size">-</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-folder w25"></i> WordPress | Codester</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Dec 19, 2016</span></td>
                                    <td><span class="size">-</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-folder w25"></i> VueJs Projects for client</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Apr 22, 2018</span></td>
                                    <td><span class="size">-</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-folder w25"></i> Angular Website proposals</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Feb 11, 2018</span></td>
                                    <td><span class="size">-</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-folder w25"></i> Dribbble | Website</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Aug 13, 2018</span></td>
                                    <td><span class="size">-</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-file-text w25 text-amber"></i> Document of Understanding</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Apr 26, 2018</span></td>
                                    <td><span class="size">67Kb</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-chart w25 text-green"></i> Report2016.xls</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Apr 26, 2018</span></td>
                                    <td><span class="size">25KB</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-collection-pdf w25 text-blush"></i> asdf  hhkj.pdf</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Apr 26, 2018</span></td>
                                    <td><span class="size">1MB</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-collection-pdf w25 text-blush"></i> asdf  hhkj.pdf</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Sept 14, 2018</span></td>
                                    <td><span class="size">1MB</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-file-text w25 text-amber"></i> Document of Understanding</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Apr 26, 2018</span></td>
                                    <td><span class="size">15KB</span></td>
                                </tr>
                                <tr>
                                    <td><span><i class="zmdi zmdi-chart w25 text-green"></i> Report2016.xls</span></td>
                                    <td><span class="owner">Me</span></td>
                                    <td><span class="date">Oct 17, 2018</span></td>
                                    <td><span class="size">08KB</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div> -->
                <div class="tab-pane file_manager active" id="grid_view">
                    <div id="load_files">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
@endsection

@section('footer')
<script src="{{ dsld_static_asset('backend/assets/bundles/footable.bundle.js') }}"></script>
<script src="{{ dsld_static_asset('backend/assets/js/pages/tables/footable.js') }}"></script>

<script>
    function file_delete(id){
        $.ajax({
            url: "{{ route('media.destroy.admin') }}",
            type: "post",
            data: {'_token':'{{ csrf_token() }}', 'id':id},
            success: function(d) {
               
                get_files();
            }
        });
    }

    function get_files(){
        var search = $('input[name=search]').val();
        var sort = $('select[name=sort]').val();

        $('#load_files').html('<center><img src="{{ dsld_static_asset('backend/assets/images/circle-loading.gif') }}" style="max-width:100px" ></center>');

        $.ajax({
            url: "{{ route('media.gets.admin') }}",
            type: "post",
            cache : false,
            data: {'_token':'{{ csrf_token() }}', 'user_id':'{{ Auth::user()->id }}', 'search':search, 'sort':sort},
            success: function(d) {
                $('#load_files').html(d);
            }
        });
    }

    $(document).ready(function(){
        get_files();
    });
    function filter(){
        get_files();
    }
</script>
@endsection