<div class="row clearfix"> 
    @if(is_array($data) || count($data) > 0)
        @foreach($data as $key => $value)             
        <div class="col-lg-3 col-md-4 col-sm-12">
            <div class="card">
                <a href="javascript:void(0);" class="file">
                    <div class="hover">
                        <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger" onclick="file_delete('{{ $value->id }}')">
                            <i class="zmdi zmdi-delete"></i>
                        </button>
                    </div>
                    @if($value->type == 'image')
                    <div class="image">
                        <img src="{{ dsld_uploaded_asset($value->id) }}" alt="img" class="img-fluid">
                    </div>
                    @elseif($value->type == 'video')
                        <div class="icon">
                            <i class="zmdi zmdi-collection-video"></i>
                        </div>
                    @elseif($value->type == 'pdf')
                        <div class="icon">
                            <i class="zmdi zmdi-collection-pdf"></i>
                        </div>
                    @elseif($value->type == 'document')
                        <div class="icon">
                            <i class="zmdi zmdi-file-text"></i>
                        </div>
                    @elseif($value->type == 'mp3')
                        <div class="icon">
                            <i class="zmdi zmdi-playlist-audio"></i>
                        </div>
                    @endif
                    <div class="file-name">
                        <p class="m-b-5 text-muted">({{ $value->id }}) - {{ $value->file_title }} </p>
                        <small> 
                        @if($value->type == 'image')<i class="zmdi zmdi-collection-image"></i>
                        @elseif($value->type == 'video') <i class="zmdi zmdi-collection-video"></i>
                        @elseif($value->type == 'pdf')<i class="zmdi zmdi-collection-pdf"></i>
                        @elseif($value->type == 'document')<i class="zmdi zmdi-file-text"></i>
                        @elseif($value->type == 'mp3')<i class="zmdi zmdi-playlist-audio"></i>
                        @endif
                            Size: {{ $value->file_size }}KB  <span class="date">{{ date("M d Y", strtotime($value->created_at)) }}</span></small>
                    </div>
                </a>
            </div>
        </div>
        @endforeach
    @endif
</div>