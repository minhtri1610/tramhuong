<?php get_header(); ?>

<main>
    <div class="container">
        <?php get_template_part('template-part/sub-nav'); ?>
        <div class="row section-page">
            <div class="col-md-12">
                <h1 class="contact-title"><i class="fas fa-info-circle"></i>&nbsp;Giới thiệu</h1>
            </div>
        </div>
        <div class="row contain-aboutme intro-content">
            <!-- <div class="bg-aboutme"></div> -->
            <div class="col-md-12 about-text-top">
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Error et amet in? Culpa quae sunt temporibus veniam incidunt odio perspiciatis atque alias maxime. Fuga, omnis temporibus. At consectetur omnis nulla.
                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus nulla inventore necessitatibus ex doloremque? In laboriosam molestias eos modi ea eaque? Dignissimos facilis dolor animi neque quam optio, minima molestiae?
            </div>
            <div class="intro-img col-md-12 pc-intro">
                <figure>
                    <img class="w100-img" src="<?= URL_IMG.'/intro_img/intro05.jpg'?>" alt="Nhang trầm được sản xuất theo mô hình truyền thống">
                </figure>
                <figure>
                    <img class="w100-img" src="<?= URL_IMG.'/intro_img/intro01.jpg'?>" alt="Quy trình sản xuất nhang trầm phước lộc">
                </figure>
                <figure>
                    <img class="w100-img" src="<?= URL_IMG.'/intro_img/intro03.jpg'?>" alt="Mọi vật liệu làm nhang điều hoàn toàn lấy từ tự nhiên">
                </figure>
            </div>
            <div class="col-md-12 about-text-bottom">
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti, sint beatae nulla veniam numquam eos ipsam quo, a eius iure animi asperiores impedit. Architecto quaerat quia odio! Quasi, architecto rem.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo, consequatur eaque, necessitatibus beatae rem assumenda repudiandae temporibus harum excepturi modi fugiat labore est, voluptatibus nihil ea asperiores doloremque perspiciatis hic.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores fuga enim accusantium corrupti perspiciatis! Earum consequuntur deleniti a fugiat officiis voluptatem nostrum, voluptas voluptate magni accusantium sit vitae nam aspernatur!
            </div>
        </div>
        <div class="row box-go-contact">
            <a href="<?= URL_ROOT.'/lien-he';?>"><button class='btn-go-contact'>Liên hệ với chúng tôi &nbsp;<span> <i class="fas fa-arrow-circle-right"></i> </span></button></a>
        </div>
    </div>
    
</main>

<?php get_footer();?>