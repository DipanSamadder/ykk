<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>YKK</title>
        @include('frontend.inc.header')
        @yield('header')
    </head>
<body>
    
    <div class="site-wrapper">
        <header class="header">
            <div class="top-bar">
            <div class="container">
            <div class="row">
            <div class="col-lg-6 col-sm-12 col-xs-12">
                <div class="top-marquee bg-site roboto">
                    <marquee>YKK is a complete 'One-stop-shop' for all your fastening and trimming needs</marquee>
                </div>
                <div class="social-icon">
                    <ul class="list-style mb-0">
                    <li><a href="" target="_blank" class="facebook"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="" target="_blank" class="linkedin"><i class="fab fa-linkedin-in"></i></a></li>
                    <li><a href="" target="_blank" class="instagram"><i class="fab fa-instagram"></i></a></li>
                    <li><a href="" target="_blank" class="youtube"><i class="fab fa-youtube"></i></a></li>
                    </ul>
                </div>
            </div><!-- col -->

                <div class="col-lg-6 col-sm-6 col-xs-12">
            <div class="header-info text-right">
            <ul class="list-style mb-0">
                <li>
                <a href="tel:">
                    <span class="info-icon"><i class="fas fa-phone"></i> </span>
                    <p><strong class="roboto">Call Us</strong>0124-4314800
                    </p>
                </a>
                </li>
                <li>
                <a href="javascript:void(0)">
                    <span class="info-icon"><i class="fas fa-map-marker-alt"></i></span>
                    <p>Global Business Park, 3rd Floor, Tower-A, Mehrauli<br>Gurugram Road, Gurugram 122002 (Haryana), India</p>
                </a>
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
                <a href="/"><img src="images/logo.png" alt="YKK"></a>
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

        @yield('content')

        <section class="main-section follow-section pt-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-6 col-xs-12 align-self-center">
                        <div class="follow-txt">
                            <div class="main-title wow fadeInUp  mb-5">
                                <h3 class="wow fadeInUp pb-2 title-tag-line">Follow Us</h3>
                                <p class="wow fadeInUp">Stay tuned for the latest updates for new arrivals and offers</p>
                                </div>
                            </div>
                        </div><!-- col -->
                        <div class="col-lg-6 col-sm-6 col-xs-12">
                        <div class="follow-us-icon">
                            <ul class="list-style mb-0">
                                <li><a href="" target="_blank" class="facebook"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="" target="_blank" class="linkedin"><i class="fab fa-linkedin-in"></i></a></li>
                                <li><a href="" target="_blank" class="instagram"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="" target="_blank" class="youtube"><i class="fab fa-youtube"></i></a></li>
                            </ul>
                        </div>
                    </div><!-- col -->
                </div>
            </div>
        </section>
        <section class="main-section contact-section bg-site p-0">
            <div class="container-left">
                <div class="row mr-0">
                    <div class="col-lg-6 col-sm-6 col-xs-12">
                        <div class="contact-form white-placeholder pt-5 pb-5">
                            <h3 class="wow fadeInUp text-white">Customer Query</h3>
                            <form action="" method="post" class="mt-4 bg-transparent p-0 contact_query">
                                <div class="field">
                                    <div class="field-sm">
                                        <input type="text" name="Name" placeholder="Name" id="name" class="form-control">
                                    </div><!-- field -->
                                    <div class="field-sm">
                                        <input type="text" name="cmp-name" placeholder="Company Name" id="c_name" class="form-control">
                                    </div> 
                                </div><!-- field -->
                                <div class="field">
                                    <div class="field-sm">
                                        <input type="text" name="email" placeholder="Email" id="email" class="form-control">
                                    </div><!-- field -->
                                    <div class="field-sm">
                                        <input type="text" name="position " placeholder="Position" id="position" class="form-control">
                                    </div><!-- field -->
                                </div><!-- field -->
                                <div class="field">
                                    <input type="text" name="phone"  onkeypress="return onlyNumberKey(event)" maxlength="16" placeholder="Phone No." id="phone" class="form-control">
                                </div><!-- field -->

                                <div class="field">
                                    <textarea placeholder="Enter Your Message" class="form-control" id="message" rows="3"></textarea>  
                                </div><!-- field -->
                                <div class="field pt-2">
                                    <button class="white-btn" id="submit">Send </button>
                                </div><!-- field -->
                            </form>

                        </div>
                    </div><!-- col -->
                    <div class="col-lg-6 col-sm-6 col-xs-12 pr-0">
                        <div class="cnt-info">
                            <div class="cnt-widget">
                                <h3 class="wow fadeInUp">Contact Us</h3>
                                <h6>YKK India PVT. LTD.</h6>
                            <address class="address"> 
                                <span class="address-icon"> <i class="fas fa-map-marker-alt"></i> </span>
                                Global Business Park, 3rd Floor, Tower-A, MehrauliGurugram Road, Gurugram 122002 (Haryana), India
                            </address>
                            <address class="address">
                                <span class="address-icon"> <i class="fas fa-envelope"></i></span>
                                <a href="mailto:info@ykk.com" target="_blank">info@ykk.com</a> </address>
                            <address class="address">
                                <span class="address-icon"><i class="fas fa-phone"></i></span>
                                <a href="tel:0124-4314800">0124-4314800</a></address>
                            </div>
                            <div class="map">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14027.965455186071!2d77.08155762356225!3d28.47980673072686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d192cb3960a9f%3A0x17544e61d29296a3!2sYKK%20India%20Pvt.%20Ltd!5e0!3m2!1sen!2sin!4v1622029212049!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                            </div>
                        </div>
                    </div><!-- col -->
                </div>
            </div>
        </section>

        <div class="copyright">
            <div class="container text-center"><p class="mb-0">YKK India © . All Rights Reserved. | Design & Developed By <a href="http://advologysolution.com/" target="blank">Advology Solution Pvt. Ltd.</a></p></div>
        </div>
        <a href="javascript:void(0);" id="scroll" class="back-to-top">
            <span><i class="lni lni-arrow-up"></i></span> 
        </a>

        <!-- contact form -->
        @include('frontend.inc.footer')
        @yield('footer')
    </body>
</html>