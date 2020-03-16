<?php get_header(); ?>

<main>  
    <div class="container">
        <!-- <div class="row">
            <div class="h2-title">
                <h2>TIN TỨC</h2>
            </div>
        </div> -->
        <div class="row">
            <div class="col-md-12 title-header-page">
                <h1>TIN TỨC</h1>
            </div>
        </div>
        <section class="list-news row">
            <div class="col-md-12">
                <?php
                    $paged = (get_query_var('paged')) ? get_query_var('paged') : 1; 
                    $args_news = array(
                        'post_type' => 'tintuc',
                        'post_status' => 'publish',
                        // 'meta_key'		=> 'type_camera',
                        // 'meta_value'	=> 'may-cham-cong-van-tay',
                        'posts_per_page' => '10',
                        'paged' => $paged
                    );
                    $news_loop = new WP_Query( $args_news );
                    if ( $news_loop->have_posts() ) :
                        while ( $news_loop->have_posts() ) : $news_loop->the_post();
                        // Set variables
                        $link_lk = get_the_permalink();
                        $title_lk = get_the_title();
                        $description_lk = get_the_excerpt();
                        $date_post = get_the_date();
                ?>
                <div class="row item-news">
                    <div class="col-md-3 news-img">
                        <figure>
                            <?php if ( has_post_thumbnail() ) {?>
                                <?php nl2br(the_post_thumbnail()); ?>
                            <?php } else{?>
                                <img src="<?php echo URL_IMG."/news.jpg"?>"/>
                            <?php } ?>
                        </figure>
                    </div>
                    <div class="col-md-9 news-cotent">
                        <div class="news-title">
                            <h3><a href="<?= $link_lk;?>"><?= $title_lk?></a></h3>
                        </div>
                        <div class="post-date">
                            <p>Ngày đăng: <?= $date_post;?></p>
                        </div>
                        <div class="list-action-socical">
                            <ul>
                                <li><button class="button">button01</button></li>
                                <li><button class="button">button01</button></li>
                                <li><button class="button">button01</button></li>
                            </ul>
                        </div>
                        <div class="news-sub-content">
                            <p>
                                <?=  nl2br($description_lk);?>
                            </p>
                        </div>
                    </div>
                </div>
                <?php
                    endwhile;
                        wp_reset_postdata();
                    endif;
                ?>
            </div>
            <div class="col-md-12 pagination-list">
                <?php if (function_exists('devvn_wp_corenavi')) devvn_wp_corenavi($news_loop);?>
            </div>
        </section>
    </div>
</main>

<?php get_footer();?>