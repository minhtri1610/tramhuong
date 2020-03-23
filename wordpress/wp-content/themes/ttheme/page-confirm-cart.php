<?php get_header(); ?>

<main>
    <div class="container">
    <?php get_template_part('template-part/sub-nav'); ?>
    <?php
        // print_r($province);exit();
        $count = 0;
        if(isset($_SESSION['data_cart'])){
            $count = count($_SESSION['data_cart']);
        }

    ?>
        <div class="section-page">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="contact-title"><i class="far fa-calendar-check"></i>&nbsp;Đơn hàng (<span class="number-sp"><?= $count;?></span> sản phẩm)</h1>
                </div>
            </div>
            <div class="row title-doc">
                <div class="col-md-12">
                    <p>Cám ơn bạn đã chọn mua sản phẩm, vui lòng xác nhận lại địa chỉ giao hàng và ấn vào nút <a href="#btn-order">"Đặt Mua"</a></p>
                </div>
                
            </div>
            <div class="row containt-cart">
                <?php 
                    if(isset($_SESSION['data_cart']) && !empty($_SESSION['data_cart'])):
                    $dataProduct = getProduct();
                    $dataUser = getInfoCustomer();
                ?>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12 cf-info">
                            <h3 class="contact-title"><i class="fas fa-address-card"></i> Thông tin đơn hàng</h3>
                        </div>
                        <div class="col-md-12 info-custome">
                            <ul>
                            <?php if(!empty($dataProduct)){
                                foreach ($dataProduct as $key => $value) {
                            ?>
                                <li>
                                    <a href="<?= $value['link'];?>"><?= $value['name'];?></a> x <?=  $value['sl'];?> sp.
                                <li>
                            <?php 
                                }
                            }
                            ?>
                            </ul>
                        </div>
                        <div class="col-md-12">
                            <a href = "<?= URL_ROOT.'/gio-hang'?>">
                                <button class="sp-edit btn btn-outline-primary btn-sm">Chỉnh Sửa</button>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12 cf-info">
                            <h3 class="contact-title"><i class="fas fa-address-card"></i> Thông tin khách hàng</h3>
                        </div>
                        <div class="info-custome col-md-12">
                            <p>Tên khách hàng: <?= isset($dataUser['customer']) ? $dataUser['customer'] : '';?></p> 
                            <p>Địa chỉ nhận hàng: <?= isset($dataUser['address']) ? $dataUser['address'] : '';?> - <?= isset($dataUser['town']) ? $dataUser['town'] : '';?> - <?= isset($dataUser['provice']) ? $dataUser['provice'] : '';?> </p>
                            <p>SĐT: <?= isset($dataUser['phone']) ? $dataUser['phone'] : '';?><?= isset($dataUser['email']) ? $dataUser['email'] : '';?></p>
                        </div>      
                        <div class="col-md-12">
                            <a href = "<?= URL_ROOT.'/gio-hang'?>">
                                <button class=" sp-edit btn btn-outline-primary btn-sm">Chỉnh Sửa</button>
                            </a>
                        </div>                  
                    </div>
                    
                </div>

                <?php else:?>
                    <div class="col-md-12">
                        <p class="text-red pd-15">Không có sản phẩm nào trong giỏ hàng!</p>
                    </div>
                <?php endif;?>
            </div>
            <div class="row box-go-contact">
                <button  id="btn-order" class='btn-go-contact'> Đặt Mua <span> &nbsp; <i class="fas fa-arrow-circle-right"></i> </span></button>
            </div>
        </div>
    </div>
</main>

<?php get_footer();?>