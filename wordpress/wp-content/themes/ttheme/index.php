<?php
get_header();
?>
    <!-- content -->
    <div class="index-body container-fluid">
        <!-- content banner  -->
        <?php get_template_part('template-part/banner'); ?>
        <!-- end content banner -->

        <!-- giới thiệu -->
        <?php get_template_part('template-part/intro'); ?>
        <!-- end giới thiệu -->

        <!-- sản phẩm -->
        <?php get_template_part('template-part/sanpham'); ?>
        <!-- end sản phẩm -->

        <!-- sản phẩm -->
        <?php get_template_part('template-part/howto'); ?>
        <!-- end sản phẩm -->

        <?php get_template_part('template-part/top-news'); ?>

        <?php get_template_part('template-part/map'); ?>

        <!-- thống kê truy cập -->
        <section id="section-statistical">
            <div class="row">
                <!-- <div class="col m4">Số lượt truy cập: </div>
                <div class="col m4">Số người online: </div>
                <div class="col m4"></div> -->
            </div>
        </section>
        <!-- end thống kê truy cập -->
    </div>
    
    <!-- end content -->
<?php
get_footer();
?>