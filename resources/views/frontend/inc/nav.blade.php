<header class="header">
    <div class="top-bar">
    <div class="container">
    <div class="row">
    <div class="col-lg-6 col-sm-12 col-xs-12">
        @if(dsld_get_setting('site_header_marguee') != '')
            <div class="top-marquee bg-site roboto">
                <marquee>{{ dsld_get_setting('site_header_marguee') }}</marquee>
            </div>
        @endif
        <div class="social-icon">
            <ul class="list-style mb-0">
            @if(dsld_get_setting('social_link_url') != '' )
                @foreach(json_decode(dsld_get_setting('social_link_url'), true) as $key => $value)
                    @php
                        $url = json_decode(dsld_get_setting('social_link_url'), true)[$key];
                        $name = json_decode(dsld_get_setting('social_link_name'), true)[$key];
                    @endphp
                    @if($name == 'fb')
                        <li><a href="{{ $url }}" target="_blank" class="facebook"><i class="fab fa-facebook-f"></i></a></li>
                    @endif
                    @if($name == 'li')
                        <li><a href="{{ $url }}"  target="_blank" class="linkedin"><i class="fab fa-linkedin-in"></i></a></li>
                    @endif
                    @if($name == 'In')
                        <li><a href="{{ $url }}"  target="_blank" class="instagram"><i class="fab fa-instagram"></i></a>
                    @endif
                    @if($name == 'yt')
                        <li><a href="{{ $url }}" target="_blank"  class="youtube"><i class="fab fa-youtube"></i></a>
                    @endif
                @endforeach
             @endif
            </ul>
        </div>
    </div><!-- col -->

        <div class="col-lg-6 col-sm-6 col-xs-12">
    <div class="header-info text-right">
    <ul class="list-style mb-0">
        <li>
            @if(dsld_get_setting('site_header_phone_number') != '')
            <a href="tel:{{ dsld_get_setting('site_header_phone_number') }}">
                <span class="info-icon"><i class="fas fa-phone"></i> </span>
                <p><strong class="roboto">Call Us</strong>{{ dsld_get_setting('site_header_phone_number') }}
                </p>
            </a>
            @endif
        </li>
        <li>
            @if(dsld_get_setting('site_header_address') != '')
            <a href="javascript:void(0)">
                <span class="info-icon"><i class="fas fa-map-marker-alt"></i></span>
                @php $str = dsld_get_setting('site_header_address'); @endphp
                <p><?php echo htmlspecialchars_decode($str); ?></p>
            </a>
            @endif
        </li>
    </ul>
    </div>
    </div><!-- col -->
    </div>

    </div>
    </div>
    <div class="main-header">
    <div class="container">
    <div class="main-bar">
    <div class="bottom-line"></div>
    <div class="row">
    <div class="col-lg-3 col-sm-3 col-xs-6">
        <div class="site-logo">
            @if(dsld_get_setting('site_logo') > 0)
                <a href="{{ route('home') }}"><img src="{{ dsld_uploaded_asset(dsld_get_setting('site_logo')) }}"  alt="{{ dsld_upload_file_title(dsld_get_setting('site_logo')) }}"></a>
            @else
                <a href="{{ route('home') }}"><img src="{{ dsld_static_asset('backend/assets/images/logo.svg') }}" alt='{{ env("APP_NAME", "Backend New" ) }}'></a>
            @endif
        </div>
    </div><!-- col -->
    <div class="col-lg-9 col-sm-9 col-xs-6">
        <nav class="nav">
        <ul>  
            <li class=""><a href="index.php">Home </a></li>
            <li class="">
                <a href="about-us.php">About Us</a>
            <ul>
                <li><a href="md-message.php">MD Message</a></li>
                <li><a href="ykk-group-history.php">YKK Group History</a></li>
                <li><a href="ykk-india-history.php">YKK India History</a></li>
                <li><a href="quality-standard.php">Quality Standard</a></li>
            </ul>
            </li>
            <li class=""><a href="product.php">Products </a></li>
            <li class=""><a href="philosophy.php">Philosophy </a></li>
            <li class=""><a href="career.php">Career </a></li>
            <li class=""><a href="blog.php">Blogs </a></li>
            <li class=""><a href="csr.php">CSR</a></li>
            <li class=""><a href="contact-us.php" class="btn">Contact Us</a></li>
        </ul>
        </nav>
    </div><!-- col -->
    </div>
    </div>
    </div>
    </div>
</header>