<section id ="section-radio" class="index-pr">
    <div class="container wow slideInRight" data-wow-duration="1s" data-wow-delay="1s">
        <h2 class="sub-title">
            <b></b>
            <span>Sản phẩm</span>
            <b></b>
        </h2>
        <div class="main-carousel" data-flickity='{ "groupCells": "true", "cellAlign": "center",
                "contain": "true" }'>

            <?php 
                $args_banner = array(
                    'post_type' => 'sanpham',
                    'post_status' => 'publish',
                    'posts_per_page' => '10',
                    'category_name' => 'nhang'
                );
                $list_news = new WP_Query( $args_banner );
            ?>
            <?php
                if ( $list_news->have_posts() ) :
                    while ( $list_news->have_posts() ) : $list_news->the_post();
                    // $news_title = get_the_title();
                    $link = get_the_permalink();
                    // $news_description = get_the_excerpt();
                    $id = get_the_ID();
                    $name = get_field('name');
                    $img01 = get_field('img01');
                    // $news_date_post = date('d-m-Y', strtotime(get_the_date()));
            ?>
                <div class="carousel-cell">
                    <div class="pro-img">
                        <img src="<?= $img01; ?>" alt="<?= $name; ?>">
                    </div>
                    <div class="pro-content">
                        <p class="title"><a href="<?= $link;?>"><?= $name; ?></a></p>
                        <p class="price"><b>Giá:</b> <span class="text-red">Liên Hệ</span></p>
                        <button class="btn-add-cart" data-link="<?= $link;?>" data-img="<?= $img01;?>" data-name= "<?= $name;?>" data-id = "<?= $id;?>"><i class="fas fa-cart-plus"></i> Chọn Mua</button>
                    </div>
                </div>
            <?php
                endwhile;
            ?>
            <?php
                    wp_reset_postdata();
                endif;
            ?>
        </div>
    </div>
</section>