@if($page !='')
    {{ $page->title }} <br>

    @php $str = $page->content; @endphp
    <?php echo htmlspecialchars_decode($str); ?>
    
@endif