    <div class="content-social">
        <div class="list-social">
            <div class="item-social">
                <i class="fab fa-facebook-messenger icon-socical"></i>
            </div>
            <div class="item-social">
                <a class="icon-socical" href="tel:+0928499959"><i class="fas fa-phone-alt"></i></a>
            </div>
            <div class="goto-top-page item-social">
                <i class="fas fa-angle-up icon-socical" title="Lên đầu trang"></i>
            </div>
        </div>
    </div>
    <footer class="page-footer">
        <div class="container main-footer">
            <div class="row">
                <div class="col-md-12 f-info">
                    <h5 class="white-text name-title">
                        <a href="<?= THEME_URL?>">Nhang trầm phước lộc</a></h5>
                    <p class="mb0">Địa chỉ: Thôn Trinh Long Khánh - Mỹ Cát - Phù Mỹ - Bình Định</p>
                    <p class="mb0">Email: chuaphuoclocvn@gmail.com</p>
                    <p class="mb0">Điện thoại: <a href="tel:0928499959" class="text-white">0928499959</a></p>
                </div>
            </div> 
        </div>
        <div class="text-center">
            <div class="text-copyr">
                © 2019 Copyright by chuaphuocloc.com
            </div>
        </div>
    </footer>
    
    <script type="text/javascript" src="<?= URL_JS.'/jquery-11.0.min.js'?>"></script>
    <script type="text/javascript" src="<?= URL_JS.'/bootstrap.min.js'?>"></script>
    <script type="text/javascript" src="<?= URL_JS.'/slick/slick.min.js'?>"></script>
    <script type="text/javascript" src="<?= URL_JS.'/flick-slide.js'?>"></script>
    <script>
        const URL_AJAX = '<?php echo admin_url('admin-ajax.php');?>';
    </script>
    <script type="text/javascript" src="<?= URL_JS.'/index.js'?>"></script>
    <script>
        jQuery(document).ready(function($) {
            //index flick slide
            $('.main-carousel').flickity({
                // options
                cellAlign: 'left',
                contain: true
            });

            $('.slick-banner').slick({
                infinite: true,
                dots: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 2000,
            });
            
            $('.slick-share').slick({
                slidesToShow: 4,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 2000,
            });
            // $('.slick-books').slick({
            //     infinite: true,
            //     dots: true,
            //     slidesToShow: 3,
            //     slidesToScroll: 1
            // });
            // $('.slick-images').slick({
            //     infinite: true,
            //     dots: true,
            //     slidesToShow: 3,
            //     slidesToScroll: 1
            //     // autoplay: true,
            //     // autoplaySpeed: 3000,
            // });
            $('.slick-banner').show();
            // $('.slick-books').show();
            // $('.slick-images').show();
        });
        $(window).scroll(function() {
            if ($(this).scrollTop() >= 300) {        // If page is scrolled more than 50px
                $('.goto-top-page').fadeIn(200);    // Fade in the arrow
            } else {
                $('.goto-top-page').fadeOut(200);   // Else fade out the arrow
            }
        });
        $('.goto-top-page').click(function() {      // When arrow is clicked
            $('body,html').animate({
                scrollTop : 0                       // Scroll to top of body
            }, 500);
        });
        
    </script>
    <?php wp_footer(); ?>
</body>
</html>