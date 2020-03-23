
<?php
    $pagename = get_query_var('pagename');
    $str_page_name = getPageName($pagename);
?>
<section id='sub-nav'>
    <ul>
        <li><a href="<?= URL_ROOT;?>"><?= __('Trang chủ')?></a></li>
        <li class="arow-icon"><a href="<?= URL_ROOT;?>"> &#8811; </a></li>
        <?php if($str_page_name == ''){?>
            <li><a href="<?= get_the_permalink();?>"><?= get_the_title();?></a></li>
        <?php }else{?> 
            <li><a href="<?= URL_ROOT."/$pagename";?>"><?= $str_page_name;?></a></li>
        <?php } ?>
        
    </ul>
</section>
