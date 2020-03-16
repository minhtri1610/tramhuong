<?php get_header(); ?>

<main role="main">
    <div class="container">
        <div class="row child-menu">
            //get child menu
        </div>
        <div class=" section-page">
            <?php
                while ( have_posts() ) : the_post(); 
                $id = get_the_ID();
                $tmp_title =  get_the_title();
                $link = get_the_permalink();
                $name = get_field('name');
                $img_1 = get_field('img01');
                $img_2 = get_field('img02');
                $img_3 = get_field('img03');
                $size = get_field('size');
                $element = get_field('element');//thành phần
                $expiry_date = get_field('expiry_date');//hsd
                $uses = get_field('uses');//công dụng
                $intro_detail = get_field('intro_detail');//giới thiệu chi tiết

            ?>

            <div class="row dsp-sp">
                <div class="col-md-6 dsp-list-img">
                    <div class="carousel" data-flickity>
                        <div class="carousel-cell-pro">
                            <img src="<?= $img_1 ?>" alt="">
                        </div>
                        <div class="carousel-cell-pro">
                            <img src="<?= $img_2 ?>" alt="">
                        </div>
                        <div class="carousel-cell-pro">
                            <img src="<?= $img_3 ?>" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-md-6 dsp-info-sp">
                    <div class="row dsp-name-sp">
                        <h2>
                            <a href="<?= $link;?>">
                                <?= $name;?>
                            </a>
                        </h2>
                    </div>
                    <div class="row dsp-detail-sp">
                        <table>
                            <tr>
                                <th>Kích thước:</th>
                                <td><?= $size;?></td>
                            </tr>
                            <tr>
                                <th>Thành phần:</th>
                                <td><?= $element;?></td>
                            </tr>
                            <tr>
                                <th>Hạn sử dụng:</th>
                                <td><?= $expiry_date;?></td>
                            </tr>
                            <tr>
                                <th>Công dụng:</th>
                                <td><?= $uses;?></td>
                            </tr>
                            <tr>
                                <th>Đánh giá:</th>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="2" class=" no-border">
                                    <button class="btn-add-cart" data-link="<?= $link;?>" data-img="<?= $img01;?>" data-name= "<?= $name;?>" data-id = "<?= $id;?>"><i class="fas fa-cart-plus"></i> Chọn Mua</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row ">
                <div class="col-md-12 dsp-text-content">
                    <h2 class="dsp-ttsp">
                        THÔNG TIN SẢN PHẨM
                    </h2>
                    <div class="sp-content">
                        <?= nl2br($intro_detail);?>
                    </div>
                </div>
            </div>
            <?php 
                endwhile;
            ?>
        </div>
        <div class="row title-header-page">
            <h1>Sản phẩm tương tự</h1>
        </div>
        <div class="row sp-list">
            <?php
                $args_product = array(
                    'post_type' => 'sanpham',
                    'post_status' => 'publish',
                    // 'meta_key'		=> 'type_camera',
                    // 'meta_value'	=> 'may-cham-cong-van-tay',
                    'posts_per_page' => '3',
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
                        <div class="sp-action">
                        <button class="btn-add-cart" data-link = "<?= $link;?>" data-img="<?= $img01;?>" data-name= "<?= $name;?>" data-id = "<?= $id;?>"><i class="fas fa-cart-plus"></i>Chọn Mua</button>
                        </div>
                    </div>
                </div>
            <?php 
                    endwhile;
                wp_reset_postdata();
                endif;
            ?>
        </div>
    </div>
</main>

<?php get_footer(); ?>