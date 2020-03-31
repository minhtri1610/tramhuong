<section id = "section-news" class="white-div">
    <div class="container">
        <div class="row ">
            <div class="col-md-8">
                <!-- <div class="parent_title" >
                    <a class="" href="<?= URL_ROOT?>"><p class = " wow fadeIn" data-wow-duration=".3" data-wow-delay=".5s"> <img width="25px" src="<?= URL_IMG."/icon-social/icon_banhxephap2.png";?>" alt=""> Tin tức</p></a>
                </div> -->
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="contact-title"><i class="fas fa-tv"></i>&nbsp;TIN TỨC</h1>
                    </div>
                </div>
                <div class="list-news ">

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
                        $news_description = get_the_excerpt();
                        $news_date_post = date('d-m-Y', strtotime(get_the_date()));
                ?>
                    <div class="lsn-item row">
                        <div class="lsni-img col-md-3 col-3">
                            <?php if ( has_post_thumbnail() ) {?>
                                <a class="" href="<?= $news_link_lk;?>"><?php the_post_thumbnail('thumbnail'); ?></a>
                            <?php } else{?>
                                <a class="" href="<?= $news_link_lk;?>"><img src="<?php echo URL_IMG."/news.jpg"?>"/></a>
                            <?php } ?>
                        </div>
                        <div class="lsni-content col-md-9 col-9">
                            <div class="lsni-title"><a href=""><?= $news_title; ?></a></div>
                            <div class="post-date">
                                <p>Ngày đăng: <?= $news_date_post;?></p>
                            </div>
                            <div class="lsni-text">
                                <?= $news_description;?>
                            </div>
                        </div>
                    </div>
                <?php
                    endwhile;
                ?>
                <?php
                        wp_reset_postdata();
                    endif;
                ?>
                    <div class="row text-just-center view-more">
                        <a href="<?= URL_ROOT.'/tin-tuc'?>">>>> Xem thêm <<<</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="contact-title" style="max-width:100%"><i class="fab fa-facebook"></i>&nbsp;FANPAGE FACEBOOK</h1>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    
</section>