<?php get_header(); ?>

<main>  
    <div class="container">
        <?php get_template_part('template-part/sub-nav'); ?>
        <div class="row section-page">
            <div class="col-md-12">
                <h1 class="contact-title"><i class="fas fa-tv"></i>&nbsp;TIN TỨC</h1>
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
                    <div class="col-md-3 col-3 news-img">
                        <figure>
                            <a href="<?= $link_lk;?>">
                                <?php if ( has_post_thumbnail() ) {?>
                                    <?php nl2br(the_post_thumbnail()); ?>
                                <?php } else{?>
                                    <img src="<?php echo URL_IMG."/news.jpg"?>"/>
                                <?php } ?>
                            </a>
                        </figure>
                    </div>
                    <div class="col-md-9 col-9 news-cotent">
                        <div class="news-title">
                            <h3><a href="<?= $link_lk;?>"><?= $title_lk?></a></h3>
                        </div>
                        <div class="post-date">
                            <p>Ngày đăng: <?= $date_post;?></p>
                        </div>
                        <div class="list-action-socical">
                            <iframe src="https://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fnhangtramphuocloc.com&width=320&layout=standard&action=like&size=small&share=true&height=35&appId=828266150704740" width="320" height="35" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                            <!-- <ul>
                                <li><button class="button">button01</button></li>
                                <li><button class="button">button01</button></li>
                                <li><button class="button">button01</button></li>
                            </ul> -->
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