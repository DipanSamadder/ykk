@if(dsld_page_meta_value_by_meta_key('setting_page_slider_image', $page->id) !='Null') 
@if(dsld_page_meta_value_by_meta_key('setting_page_banner_slider', $page->id) == 'slider') 

@if(is_array(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', $page->id), true)) && count(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', $page->id), true)) > 0 ) 


<div class="banner">
	<div class="hero-slider owl-carousel">

		@foreach(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', $page->id), true) as $key => $value)
		<div class="item bg-img" style="background:url('{{ dsld_uploaded_asset(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', $page->id), true)[$key]) }}')">
			<div class="container">
				<div class="slider-content text-white">
					<div class="slider-heading roboto"><span class="tcolor">{{ json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_heading', $page->id), true)[$key] }}</span></div>
					<p class="slider-txt roboto">{{ json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_content', $page->id), true)[$key] }}</p>
					@if(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', $page->id), true)[$key] !='Null')
					<a href="{{ json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', $page->id), true)[$key] }}" class="btn">Learn More</a>
					@endif
				</div>
				<!-- <div class="float-right text-white">
					*as of 2021
				</div> -->
			</div>
		</div><!-- item -->
		@endforeach

    </div>	
</div> <!-- banner -->


@endif
@endif

@endif
