<?php get_header(); ?>

<main>
    <div class="container">
        <?php get_template_part('template-part/sub-nav'); ?>
        <!-- <div class="row section-page">
            <div class="col-md-12">
                <h1 class="contact-title"><i class="fas fa-comments"></i>&nbsp;Liên Hệ</h1>
            </div>
        </div> -->
        <div class="row section-page">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        <p class="thank-text">
                            Cám ơn quý khách đã ghé thăm website <a href="<?= URL_ROOT;?>"><?= NAME_DOIMAIN;?></a>. Quý vị có thể liên hệ theo thông tin bên dưới.
                        </p>
                    </div>
                </div>
                <!-- <div class="row lh-title">
                    <h1>Nhang Trầm Phước Lộc</h1>
                </div> -->
                <div class="row contact-info">
                    <div class="col-md-6 l-contact-info">
                        <h3 class="contact-title"><i class="fas fa-address-card"></i> Thông tin liên hệ</h3>
                        <table>
                            <tr>
                                <td class="td-icon"><i class="fas fa-search-location"></i></td>
                                <td>Địa chỉ: <a href="#contain-map"><?= ADD;?></a></td>
                            </tr>
                            <tr>
                                <td class="td-icon"><i class="fas fa-mobile-alt"></i></td>
                                <td>Số điện thoại: <a href="tel:<?= MY_PHONE;?>"><?= MY_PHONE;?></a></td>
                            </tr>
                            <tr>
                                <td class="td-icon"><i class="fab fa-facebook-square"></i></td>
                                <td>Fanpage Facebook: </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-6 r-contact-info">
                        <h3 class="contact-title" style="max-width: 100%"><i class="fas fa-paper-plane"></i> Gửi email cho chúng tôi</h3>
                        <form action="">
                            <label for="email">Email</label>
                            <input type="email" placeholder="Email của bạn..." name="email">
                            <label for="name">Tên khách hàng:</label>
                            <input type="text" name="name">
                            <label for="content">Nội dung phản hồi:</label>
                            <textarea name="" id="" cols="30" rows="10">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt necessitatibus accusantium possimus, voluptates aliquam, eaque eveniet minima, assumenda nemo libero veniam. Repudiandae officia accusamus laudantium culpa praesentium iusto sequi qui!
                            </textarea>
                            <button class="btn-sendmail"><i class="fas fa-paper-plane"></i>&nbsp;Gửi</button>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 contain-map" id="contain-map">
                        <h3 class="contact-title"><i class="fas fa-search-location"></i> Tìm chúng tôi trên bản đồ</h3>
                        <div class="mapouter">
                            <div class="gmap_canvas">
                                <iframe id="gmap_canvas" src="https://maps.google.com/maps?q=ch%C3%B9a%20ph%C6%B0%E1%BB%9Bc%20l%E1%BB%99c%20ph%C3%B9%20m%E1%BB%B9%20m%E1%BB%B9%20c%C3%A1t%20b%C3%ACnh%20%C4%91%E1%BB%8Bnh&t=k&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row box-go-contact">
            <a href="<?= URL_ROOT.'/san-pham';?>"><button class='btn-go-contact'> Xem sản phẩm <span> &nbsp; <i class="fas fa-arrow-circle-right"></i> </span></button></a>
        </div>
    </div>
</main>

<?php get_footer();?>