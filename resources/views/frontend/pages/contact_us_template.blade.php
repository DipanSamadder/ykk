@extends('frontend.layouts.app')

@section('content')

@include('frontend.partials.slider-banner-section')

@php 
 $contactdetails_file_0 = dsld_page_meta_value_by_meta_key('contactus_contactdetails_file_0', $page->id);
@endphp

@if( $contactdetails_file_0 !='Null' && $contactdetails_file_0 !='')
<section class="main-section csr-section contact-pg before-none">
  <div class="container">
      <div class="row">
        <div class="col-lg-5 col-sm-5 col-xs-12 order-2 order-xs-1">
           <div class="csr-img">
             <img src="{{ dsld_uploaded_asset($contactdetails_file_0) }}" alt="{{ dsld_upload_file_title($contactdetails_file_0) }}">
           </div>  
        </div>
        <div class="col-lg-7 col-sm-7 col-xs-12 contact-scroll">       
           <div class="cnt-address mb-4">
              <h2 class=" fs-25">  </h2>
              <div class="bg-light">
              <div class="bg-site roboto fs-18 contact-heading">
                YKK INDIA PVT. LTD.
              </div>
              <div class="cnt-box">
                  <div class="row">
                    <div class="col-lg-6 col-sm-6 col-xs-12">                    
                       <address>
                          <span class="address-icon material-icons tcolor">location_on</span>
                       Global Business Park, 3rd Floor, Tower-A, Mehrauli Gurugram Road, Gurugram 122002 (Haryana), India
                       </address>                
                    </div>
                    <div class="col-lg-6 col-sm-6 col-xs-12">                        
                       <address>
                         <span class="address-icon material-icons tcolor">call</span>                        
                           0124-4314800  Fax No. : 124-4314899                         
                       </address>                       
                        <address>
                         <span class="address-icon material-icons tcolor">email</span>
                         <a href="mailto:  info@ykk.com" target="_blank"></a> <a href="mailto:" target="_blank"></a>  info@ykk.com
                       </address>                        
                    </div>
                  </div>
                </div><!-- cnt-box -->
              </div>
          </div> <!-- rept --> 
          <div class="cnt-address mb-4">
              <h2 class=" fs-25"> NOIDA </h2>
              <div class="bg-light">
              <div class="bg-site roboto fs-18 contact-heading">
                YKK INDIA PVT. LTD.
              </div>
              <div class="cnt-box">
                  <div class="row">
                    <div class="col-lg-6 col-sm-6 col-xs-12">                    
                       <address>
                          <span class="address-icon material-icons tcolor">location_on</span>
                      OFFICE NO. 809 & 810, 8TH FLOOR, BW-58 SECTOR-32, LOGIX CITY CENTRE, NOIDA GAUTAM BUDH NAGAR, UTTAR PRADESH-201301
                       </address>                
                    </div>
                    <div class="col-lg-6 col-sm-6 col-xs-12">                        
                       <address>
                         <span class="address-icon material-icons tcolor">call</span>                        
                           0120-4139554   0120-4553622                       
                       </address>                       
                        <address>
                         <span class="address-icon material-icons tcolor">email</span>
                         <a href="mailto:  info@ykk.com" target="_blank"></a> <a href="mailto:" target="_blank"></a>  info@ykk.com
                       </address>                        
                    </div>
                  </div>
                </div><!-- cnt-box -->
              </div>
          </div> <!-- rept -->  
          <div class="cnt-address mb-4">
              <h2 class=" fs-25"> KANPUR </h2>
              <div class="bg-light">
              <div class="bg-site roboto fs-18 contact-heading">
                YKK INDIA PVT. LTD.
              </div>
              <div class="cnt-box">
                  <div class="row">
                    <div class="col-lg-6 col-sm-6 col-xs-12">                    
                       <address>
                          <span class="address-icon material-icons tcolor">location_on</span>
                      Office no. 401, 4th Floor Krishna Tower, opposite Green Park Stadium, Civil Lines, Kanpur (U.P.)- 208001
                       </address>                
                    </div>
                    <div class="col-lg-6 col-sm-6 col-xs-12">                        
                       <address>
                         <span class="address-icon material-icons tcolor">call</span>                        
                          9818144988   9311374351                    
                       </address>                       
                        <address>
                         <span class="address-icon material-icons tcolor">email</span>
                         <a href="mailto:  info@ykk.com" target="_blank"></a> <a href="mailto:" target="_blank"></a>  info@ykk.com
                       </address>                        
                    </div>
                  </div>
                </div><!-- cnt-box -->
              </div>
          </div> <!-- rept -->      
          <div class="cnt-address mb-4">
              <h2 class=" fs-25"> JAIPUR </h2>
              <div class="bg-light">
              <div class="bg-site roboto fs-18 contact-heading">
                YKK INDIA PVT. LTD.
              </div>
              <div class="cnt-box">
                  <div class="row">
                    <div class="col-lg-6 col-sm-6 col-xs-12">                    
                       <address>
                          <span class="address-icon material-icons tcolor">location_on</span>
                      505, 5TH FLOOR, BALAJI TOWER-6 (AIRPORT PLAZA), TONK ROAD, JAIPUR-302018 RAJASTHAN
                       </address>                
                    </div>
                    <div class="col-lg-6 col-sm-6 col-xs-12">                        
                       <address>
                         <span class="address-icon material-icons tcolor">call</span>                        
                          +91-141-2553698                   
                       </address>                       
                        <address>
                         <span class="address-icon material-icons tcolor">email</span>
                         <a href="mailto:  info@ykk.com" target="_blank"></a> <a href="mailto:" target="_blank"></a>  info@ykk.com
                       </address>                        
                    </div>
                  </div>
                </div><!-- cnt-box -->
              </div>
          </div> <!-- rept --> 
          <div class="cnt-address mb-4">
              <h2 class=" fs-25"> KOCHI </h2>
              <div class="bg-light">
              <div class="bg-site roboto fs-18 contact-heading">
                YKK INDIA PVT. LTD.
              </div>
              <div class="cnt-box">
                  <div class="row">
                    <div class="col-lg-6 col-sm-6 col-xs-12">                    
                       <address>
                          <span class="address-icon material-icons tcolor">location_on</span>
                     NO.32/1575-A1, NH BYE PASS (OPP. TO EMC HOSPITAL) PALARIVATTOM, ERNAKULAM-682028 (KERELA)
                       </address>                
                    </div>
                    <div class="col-lg-6 col-sm-6 col-xs-12">                        
                       <address>
                         <span class="address-icon material-icons tcolor">call</span>                        
                          +91-484-4044140                  
                       </address>                       
                        <address>
                         <span class="address-icon material-icons tcolor">email</span>
                         <a href="mailto:  info@ykk.com" target="_blank"></a> <a href="mailto:" target="_blank"></a>  info@ykk.com
                       </address>                        
                    </div>
                  </div>
                </div><!-- cnt-box -->
              </div>
          </div> <!-- rept -->     
        </div>
      </div>
  </div>
  <div class="dots-animation bottom-left haff-bottom"></div>
</section>
@endif

@endsection