
<table class="table table-bordered table-striped table-hover dataTable">
    <thead>
            <tr class="text-center">
                <th>Sr</th>
                <th>Menu</th>
                <th>Type</th>
                <th>Level</th>
                <th>Parent</th>
                <th>Setting</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tfoot>
            <tr class="text-center">
                <th>Sr</th>
                <th>Menu</th>
                <th>Type</th>
                <th>Level</th>
                <th>Parent</th>
                <th>Setting</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </tfoot>
    <tbody>
        @if(is_array($data) || count($data) > 0 )
            @foreach($data as $key => $value)
            @php $key++; @endphp
                <tr>
                    <th scope="row">{{ $key }}</th>
                    <td>
                        @if($value->banner > 0)
                            <img src="{{ dsld_uploaded_asset($value->banner) }}" alt="{{ dsld_upload_file_title($value->banner) }}" class="page_banner_icon">
                        @else
                            <img src="{{ dsld_static_asset('backend/assets/images/xs/avatar1.jpg') }}" alt="Dummy Image" class="page_banner_icon">
                        
                        @endif
                    </td>
                    <td>
                        {{ $value->name }}<br>
                        <small>{{ $value->url }}</a></small>
                    </td>
                    <td><small>@if($value->type != '')<a href="{{ route('menus.ordering', [$value->type]) }}" target="_blank">{{ $value->type }}</a></small> @else -- @endif</td>
                    @php $par = App\Models\Menu::where('id', $value->parent)->first(); @endphp
                    <td><small>@if($par != '') <strong>{{ $par->name }} @endif </strong><br>Level: {{ $value->level }}</small></td>
                    <td><small>{{ $value->setting }}</small></td>
                    <td><small>U: {{ date('h:i:s d M, Y', strtotime($value->updated_at)) }}<br>C: {{ date('h:i:s d M, Y', strtotime($value->created_at)) }}</small></td>
                    <td>

                        <div class="custom-control custom-switch">
                            <input type="checkbox" class="custom-control-input" id="data_{{$value->id }}" onchange="DSLDStatusUpdate('{{ $value->id }}','{{ $value->status == 0 ? 1 : 0  }}', '{{ route('menus.status') }}','{{ csrf_token() }}')" @if($value->status == 0) checked @endif >
                            <label class="custom-control-label" for="data_{{$value->id }}"></label>
                        </div>

                    </td>
                    <td>
                        <p class="text-center mb-0 action_items">
                            <a href="{{ route('menus.edit', [$value->id]) }}" target="_blank" class="btn btn-default waves-effect waves-float btn-sm waves-red bg-primary">
                                <i class="zmdi zmdi-edit"></i>
                            </a>
                            <a href="javascript:void(0);" class="btn btn-default waves-effect waves-float btn-sm waves-red bg-danger" onclick="DSLDDeleteAlert('{{ $value->id }}','{{ route('menus.destory') }}','{{ csrf_token() }}')">
                                    <i class="zmdi zmdi-delete"></i>
                            </a>
                        </p>
                    </td>
                </tr>
            @endforeach
        @else
            <tr>
                <td colspan="8" class="text-center">Nothing Found</td>
            </tr>
        @endif
    </tbody>
</table>

{{  $data->links('backend.pagination.custom') }}
