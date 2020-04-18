
<div class="bg-hed  m-b0">
  <div class="head-info">
    <ul class="list-info">
      <li><i class="fas fa-mobile-alt"></i> <?= MY_PHONE;?></li>
      <li> <i class="fas fa-map-marker-alt"></i> Địa chỉ: <?= ADD;?></li>
      <li class="icon-nav"><i class="fab fa-facebook"></i></li>
      <li class="icon-nav"><i class="fab fa-google-plus"></i></li>
    </ul>
  </div>
  <div class="container">
    <div class="logo col-md-3">
      <a href="<?= URL_ROOT;?>">
        <img class="w100-img" src="<?= URL_IMG.'/logo.png'?>" alt="Nhang trầm phước lộc">
      </a>
    </div>
    <div class="col-md-6 title-parent">
      <a href="<?= URL_ROOT;?>">
        <h1>Nhang Trầm Phước Lộc</h1>
      </a>
      <p> <a href="tel:<?= MY_PHONE;?>" class=""><i class="fas fa-mobile-alt"></i> <?= MY_PHONE;?> </a><span>&nbsp;&nbsp;</span><a href="" class=""><i class="fab fa-facebook"></i> <?= FB_LINK;?> </a></p>
    </div>
    <div class="col-md-3">
      <div class="cart">
        <a href="<?= URL_ROOT.'/gio-hang'?>"><i class="fas fa-shopping-basket"></i></a>
        <?php 
          $count = 0;
          if(isset($_SESSION['data_cart'])){
            $count = count($_SESSION['data_cart']);
          }
        ?>
        <p>Đã chọn: <span class="number-cart text-red"><?= $count;?></span> sản phẩm</p>
        <div class="alert-cart">
          <p>Thêm vào giỏ hàng thành công!</p>
          <a href="<?= URL_ROOT.'/gio-hang'?>"><button class="btn-go-payment">Xem giỏ hàng và thanh Toán</button></a>
          <i class="fas fa-times-circle i-close"></i>
        </div>
      </div>
    </div>
    
  </div>
</div>
<?php get_template_part('template-part/menu'); ?>
         