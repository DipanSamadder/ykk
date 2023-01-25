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
            @include('frontend.inc.nav')
      
            @yield('content')

            @include('frontend.inc.footer-section')
            @include('frontend.inc.footer')

            @yield('footer')

        </div>
    </body>
</html>