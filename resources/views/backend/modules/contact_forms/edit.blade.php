@if($data !='')
<input type="hidden" id="edit_section_name" value="form_setting_{{ $data->id }}">
<input type="hidden" id="edit_page_id" value="{{ $data->id }}">

<div class="body">
    <div class="row clearfix">
        <div class="col-sm-12">
            <div class="form-group">
                <label class="form-label">Title <small class="text-danger">*</small></label>                                 
                <input type="text" name="title" id="edit_title" class="form-control" placeholder="Title" @if($data->title) value="{{ $data->title }}" @endif />                                   
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <label class="form-label">Admin Mail </label>                                 
                <input type="hidden" name="edit_type[]" value="send_mail"/>                                   
                <input type="text" name="send_mail" id="edit_send_mail" class="form-control" placeholder="Admin Mail" @if(dsld_page_meta_value_by_meta_key('send_mail', $data->id)) value="{{ dsld_page_meta_value_by_meta_key('send_mail', $data->id) }}" @else value="0" @endif />                                   
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <label class="form-label">Admin Mail 2 </label>                        
                <input type="hidden" name="edit_type[]" value="send_mail2"/>                                 
                <input type="text" name="send_mail2" id="edit_send_mail2" class="form-control" placeholder="Admin Mail 2" @if(dsld_page_meta_value_by_meta_key('send_mail2', $data->id)) value="{{ dsld_page_meta_value_by_meta_key('send_mail2', $data->id) }}" @else value="0" @endif />                                   
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label class="form-label">Admin Template </label>                                 
                <input type="hidden" name="edit_type[]" value="admin_template"/>     
                <select class="form-control" name="admin_template" id="edit_admin_template" onchange="is_edited()">
                    <option value="">-- Please select --</option>
                    <option value="admin_template"  @if(dsld_page_meta_value_by_meta_key('admin_template', $data->id) == 'admin_template') selected @endif>Admin Template</option>
                </select>                                    
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label class="form-label">User Template </label>                                 
                <input type="hidden" name="edit_type[]" value="user_template"/>     
                <select class="form-control" name="user_template" id="edit_user_template" onchange="is_edited()">
                    <option value="">-- Please select --</option>
                    <option value="user_template"  @if(dsld_page_meta_value_by_meta_key('user_template', $data->id) == 'user_template') selected @endif>User Template</option>
                </select>                                   
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label class="form-label">Layout </label>                                 
                <input type="hidden" name="edit_type[]" value="layout"/>     
                <select class="form-control" name="layout" id="edit_layout" onchange="is_edited()">
                    <option value="">-- Please select --</option>
                    <option value="contact_layout"  @if(dsld_page_meta_value_by_meta_key('layout', $data->id) == 'contact_layout') selected @endif>Contact Layout</option>
                    <option value="sidebar_layout"  @if(dsld_page_meta_value_by_meta_key('layout', $data->id) == 'sidebar_layout') selected @endif>Sidebar Layout</option>
                </select>                                   
            </div>
        </div>
        <div class="col-sm-12">
            <div class="form-group">
                <label class="form-label">Success Message (Notification)</label>        
                <input type="hidden" name="edit_type[]" value="success_msg"/>                                 
                <textarea name="success_msg" id="edit_success_msg" class="form-control" placeholder="Text Area">@if(dsld_page_meta_value_by_meta_key('success_msg', $data->id)) {{ dsld_page_meta_value_by_meta_key('success_msg', $data->id) }} @endif</textarea>                                
            </div>
        </div>
        <div class="col-sm-12">
            <div class="form-group">
                <label class="form-label">Body Message (Mail) </label>        
                <input type="hidden" name="edit_type[]" value="mail_body"/>                                 
                <textarea name="mail_body" id="edit_mail_body" class="form-control" placeholder="Text Area">@if(dsld_page_meta_value_by_meta_key('mail_body', $data->id)) {{ dsld_page_meta_value_by_meta_key('mail_body', $data->id) }} @endif</textarea>                                
            </div>
        </div>
        <div class="col-sm-12">
            <div class="form-group">
                <label class="form-label">Redirect </label>               
                <input type="hidden" name="edit_type[]" value="redirect"/>                                  
                <input type="text" name="redirect" id="edit_redirect" class="form-control" placeholder="Redirect" @if(dsld_page_meta_value_by_meta_key('redirect', $data->id)) value="{{ dsld_page_meta_value_by_meta_key('redirect', $data->id) }}" @else value="0" @endif />                                   
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <label class="form-label">Order </label>                                   
                <input type="text" name="order" id="edit_order" class="form-control" placeholder="Order" @if($data->order) value="{{ $data->order }}" @else value="0" @endif />                                   
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <label class="form-label">Status <small class="text-danger">*</small></label>                                 
                <select class="form-control w-100  ms select2 mr-2" name="edit_status" id="edit_status">
                    <option value="">-- Please select --</option>
                    <option value="1"  @if($data->status == 1) selected @endif>Active</option>
                    <option value="0" @if($data->status == 0) selected @endif>Deactive</option>
                </select>                             
            </div>
        </div>
    </div>
</div>
@endif
                