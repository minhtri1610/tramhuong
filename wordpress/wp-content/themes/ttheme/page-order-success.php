<?php get_header(); ?>

<main>
    <div class="container">
        <?php get_template_part('template-part/sub-nav'); ?>
        <div class="bg-success-order">
            <p class="">Đơn hàng khởi tạo thành công, chúng tôi sẽ liên hệ trong thời gian sớm nhất!</p>
            <p>Xin cám ơn!</p>
            <p>
                <a href="<?= URL_ROOT?>">
                    <button class="btn btn-outline-primary">Trang chủ</button>
                </a>
            </p>
            <img src="<?= URL_IMG.'/order-success.jpg'?>" alt="">
        </div>
    </div>
</main>

<?php get_footer();?>