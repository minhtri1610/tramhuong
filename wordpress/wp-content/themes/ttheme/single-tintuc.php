<?php get_header(); ?>

<main>
    <div class="container">
        <?php get_template_part('template-part/sub-nav'); ?>
        <div class="row section-page">
            <div class="col-md-12">
                <h1 class="contact-title"><i class="far fa-newspaper"></i>&nbsp;TIN TỨC</h1>
            </div>
        </div>
        <section class="news-detail">
            <div class="row">
                <div class="col-md-12 bg-news-child">
                    <?php 
                        while ( have_posts() ) : the_post(); 
                        $id = get_the_ID();
                        $tmp_title =  get_the_title();
                        $link = get_the_permalink();
                        $news_date_post_sign = date('d-m-Y', strtotime(get_the_date()));
                        $content_text = get_the_content();
                    ?>
                    <div class="parent-title">
                        <h3>
                            <?= $tmp_title;?>
                        </h3>
                    </div>
                    <div class="post-date">
                        Ngày đăng: <?= $news_date_post_sign;?>
                    </div>
                    <div class="list-btn-socical">
                        <div class="fb-like" data-href="<?= $link;?>" data-width="" data-layout="standard" data-action="like" data-size="small" data-share="true"></div>
                    </div>
                    <div class="news-body">
                        <?php echo  nl2br($content_text);?>
                    </div>
                    <?php
                        endwhile;
                    ?>
                </div>
                
            </div>
            
        </section>
        <div class="section-page row">
            <div class="col-md-12">
                <h1 class="contact-title"><i class="far fa-copy"></i>&nbsp; Tin liên quan</h1>
            </div>
            <div class="col-md-12">
                <div class="row">
                    <ul class="news-lq">
                        <?php 
                            $args_banner = array(
                                'post_type' => 'tintuc',
                                'post_status' => 'publish',
                                'posts_per_page' => '5',
                                'category_name' => 'tin-tuc'
                            );
                            $list_news = new WP_Query( $args_banner );
                        ?>
                        <?php
                            if ( $list_news->have_posts() ) :
                                while ( $list_news->have_posts() ) : $list_news->the_post();
                                $news_title = get_the_title();
                                $news_link_lk = get_the_permalink();
                                $news_date_post = date('d-m-Y', strtotime(get_the_date()));
                        ?>
                            <li><a href="<?= $news_link_lk;?>">[<?= $news_date_post;?>] <?= $news_title;?></a></li>
                        <?php
                            endwhile;
                        ?>
                        <?php
                                wp_reset_postdata();
                            endif;
                        ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</main>

<?php get_footer();?>