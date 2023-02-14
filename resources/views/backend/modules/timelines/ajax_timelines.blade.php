
<table class="table table-bordered table-striped table-hover dataTable">
    <thead>
            <tr class="text-center">
                <th>Sr</th>
                <th>Title</th>
                <th>Details</th>
                @if(dsld_have_user_permission('timelines_edit') == 1)
                <th>Status</th>
                @endif

                @if(dsld_have_user_permission('timelines_edit') == 1 || dsld_have_user_permission('timelines_delete') == 1)
                <th>Action</th>
                @endif
            </tr>
        </thead>
        <tfoot>
            <tr class="text-center">
                <th>Sr</th>
                <th>Title</th>
                <th>Details</th>
                @if(dsld_have_user_permission('timelines_edit') == 1)
                <th>Status</th>
                @endif
                
                @if(dsld_have_user_permission('timelines_edit') == 1 || dsld_have_user_permission('timelines_delete') == 1)
                <th>Action</th>
                @endif
            </tr>
        </tfoot>
    <tbody>
        @if(is_array($data) || count($data) > 0 )
            @foreach($data as $key => $value)
            @php 
                $key++; 
                $details = json_decode($value->meta_fields);
            @endphp
                <tr>
                    <th scope="row">{{ $key }}</th>
                    <td>{{ $details->month }} - {{ $value->title }}</td>
                    <td><small><br>{{ $details->cat }}</small></td>
                    @if(dsld_have_user_permission('timelines_edit') == 1)
                    <td>
                        <div class="custom-control custom-switch">
                            <input type="checkbox" class="custom-control-input" id="status_office{{$value->id }}" onchange="DSLDStatusUpdate('{{ $value->id }}','{{ $value->status == 1 ? 0 : 1  }}', '{{ route('pages.status') }}','{{ csrf_token() }}')" @if($value->status == 1) checked @endif >
                            <label class="custom-control-label" for="status_office{{$value->id }}"></label>
                        </div>
                    </td>
                    @endif

                    @if(dsld_have_user_permission('timelines_edit') == 1 || dsld_have_user_permission('timelines_delete') == 1)
                    <td>
                            @if(dsld_have_user_permission('timelines_edit') == 1)
                            <a href="javascript:void(0)"  onclick="edit_lg_modal_form({{ $value->id }});" class="btn btn-default waves-effect waves-float btn-sm waves-red bg-primary">
                                <i class="zmdi zmdi-edit"></i>
                            </a>
                            @endif
                            @if(dsld_have_user_permission('timelines_delete') == 1)
                            <a href="javascript:void(0);" class="btn btn-default waves-effect waves-float btn-sm waves-red bg-danger" onclick="DSLDDeleteAlert('{{ $value->id }}','{{ route('pages.destory') }}','{{ csrf_token() }}')">
                                    <i class="zmdi zmdi-delete"></i>
                            </a>
                            @endif
                        </p>
                    </td>
                    @endif
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
