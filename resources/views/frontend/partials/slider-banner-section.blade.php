@if(dsld_page_meta_value_by_meta_key('setting_page_banner_slider', 3) == 'slider' && dsld_page_meta_value_by_meta_key('setting_page_slider_image', 3) !='Null') 

@if(is_array(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', 3), true)) && count(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', 3), true)) > 0 ) 


<div class="banner">
	<div class="hero-slider owl-carousel">

		@foreach(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', 3), true) as $key => $value)
		<div class="item bg-img" style="background:url('{{ dsld_uploaded_asset(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', 3), true)[$key]) }}')">
			<div class="container">
				<div class="slider-content text-white">
					<div class="slider-heading roboto"><span class="tcolor">{{ json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_heading', 3), true)[$key] }}</span></div>
					<p class="slider-txt roboto">{{ json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_content', 3), true)[$key] }}</p>
					@if(json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', 3), true)[$key] !='Null')
					<a href="{{ json_decode(dsld_page_meta_value_by_meta_key('setting_page_slider_image', 3), true)[$key] }}" class="btn">Learn More</a>
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
