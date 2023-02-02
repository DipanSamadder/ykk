<script>

function clear_cache(){
    DSLDAjaxSubmitFullLoader('{{ route("clear.cache") }}', '', 'GET', '1');
}

$(document).ready(function(){
    $('#upload_form').on('submit', function(event){
    event.preventDefault();
        var images = $('#upload_images').val();
        var formData = new FormData(this);
        let TotalFiles = $('#upload_images')[0].files.length; //Total files
        let files = $('#upload_images')[0];
        for (let i = 0; i < TotalFiles; i++) {
        formData.append('files' + i, files.files[i]);
        }
        formData.append('TotalFiles', TotalFiles);
        if(images != null && images != ''){
            $(this).addClass('btnloading');
            DSLDAjaxSubmit("{{ route('media.uploads') }}", formData, "POST", ".btnloading", 1);
            $(this)[0].reset();
            $('.dropify-render img').attr('src','');
            $('#DSLDImageUpload').modal('hide');
            get_files();
        }else{
            dsldFlashNotification('warning', 'Please select file. Then upload again.');
        }

    });

});
$(document).ready(function() { $(".select2").select2(); });
</script>