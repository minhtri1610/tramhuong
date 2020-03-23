<?php get_header(); ?>

<main>
    <div class="container">
        <!-- hiển thị menu con-->
        <?php get_template_part('template-part/sub-nav'); ?>
        <div class="row section-page">
            <div class="col-md-12 sp-content">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="contact-title"><i class="fab fa-dropbox"></i>&nbsp;Sản Phẩm</h1>
                    </div>
                </div>
                <div class="row sp-list">

                    <?php
                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1; 
                        $args_product = array(
                            'post_type' => 'sanpham',
                            'post_status' => 'publish',
                            // 'meta_key'		=> 'type_camera',
	                        // 'meta_value'	=> 'may-cham-cong-van-tay',
                            'posts_per_page' => '10',
                            'paged' => $paged
                        );
                        $products_loop_mcc = new WP_Query( $args_product );
                        if ( $products_loop_mcc->have_posts() ) :
                            while ( $products_loop_mcc->have_posts() ) : $products_loop_mcc->the_post();
                            // Set variables
                                $title_mcc = get_the_title();
                                $link = get_the_permalink();
                                $description_mcc = get_the_content();
                                $name = get_field('name');
                                $img01 = get_field('img01');
                                $id = get_the_ID();
                    ?>
                        <div class="col-md-3 sp-item">
                            <div class="sp-img">
                                <a href="<?= $link;?>">
                                    <img src="<?= $img01;?>" alt="<?= $name;?>">
                                </a>
                            </div>
                            <div class="sp-infor">
                                <div class="sp-name">
                                    <a href="<?= $link;?>">
                                        <?= $name;?>
                                    </a>
                                </div>
                                <div class="sp-price">
                                    Giá: <span class="text-red"> Liên Hệ</span>
                                </div>
                                <div class="sp-star">
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <div class="sp-action">
                                    <button class="btn-add-cart" data-link ="<?= $link;?>" data-img="<?= $img01;?>" data-name= "<?= $name;?>" data-id = "<?= $id;?>"><i class="fas fa-cart-plus"></i>Chọn Mua</button>
                                </div>
                            </div>
                        </div>
                    <?php 
                            endwhile;
                        wp_reset_postdata();
                        endif;
                    ?>
                </div>
                <div class="row pagination-list">
                    <?php if (function_exists('devvn_wp_corenavi')) devvn_wp_corenavi($products_loop_mcc);?>
                </div>
            </div>
        </div>

        <div class="row section-payment">
            <div class="col-md-6 contact-number">
                <div class="btn-payment">
                    <i class="fas fa-mobile-alt"></i> <?= MY_PHONE;?>
                </div>
            </div>
            <div class="col-md-6 payment">
                <a href="<?= URL_ROOT.'/gio-hang'?>">
                    <div class="btn-payment">
                        <?php 
                            $count = 0;
                            if(isset($_SESSION['data_cart'])){
                                $count = count($_SESSION['data_cart']);
                            }
                        ?>
                        <i class="fas fa-shopping-basket"></i> Đặt Hàng (<span class="number-cart text-red"><?= $count;?></span> SP)
                    </div>
                </a>
            </div>
        </div>
    </div>
</main>

<?php get_footer();?>