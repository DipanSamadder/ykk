@extends('frontend.layouts.app')

@section('content')

@include('frontend.partials.slider-banner-section')

@if($page !='')
    {{ $page->title }} <br>

    @php $str = $page->content; @endphp
    <?php echo htmlspecialchars_decode($str); ?>
    
@endif


@endsection