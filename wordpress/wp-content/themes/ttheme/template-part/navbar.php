<style>
  .title-parent h1{
    text-transform: uppercase;
    font-size: 32px;
    font-weight: bold;
    color: #780000;
    text-align: center;
  }
  .logo{
    padding: 0;
  }
</style>
<div class="bg-hed  m-b0">
  <div class="head-info">
    <ul class="list-info">
      <li><i class="fas fa-mobile-alt"></i> <?= MY_PHONE;?></li>
      <li> <i class="fas fa-map-marker-alt"></i> Địa chỉ: Thôn Trinh Long Khánh - Mỹ Cát - Phù Mỹ - Bình Định</li>
      <li><i class="fab fa-facebook"></i></li>
      <li><i class="fab fa-google-plus"></i></li>
    </ul>
  </div>
  <div class="container">
    <div class="logo col-md-3">
      <img class="w100-img" src="<?= URL_IMG.'/logo.png'?>" alt="">
    </div>
    <div class="col-md-6 title-parent">
      <h1>Nhang Trầm Phước Lộc</h1>
      <p> <a href="tel:<?= MY_PHONE;?>" class="text-red"><i class="fas fa-mobile-alt"></i> <?= MY_PHONE;?> </a></p>
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
<nav class="navbar navbar-expand-md bg-dark navbar-dark bg-gradient-menu" id="navFixed">
  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleMenu">
    <span class="navbar-toggler-icon"></span>
  </button>
  <!-- Navbar links -->
  <div class="collapse navbar-collapse container" id="collapsibleMenu">
    <ul class="navbar-nav">
        <li class="nav-item"><a class=" nav-link color-a" href="<?= URL_ROOT;?>">Trang chủ</a></li>
        <li class="nav-item"><a class="nav-link color-a" href="<?= URL_ROOT.'/gioi-thieu';?>">Giới thiệu</a></li>
        <li class="nav-item"><a class="nav-link color-a" href="<?= URL_ROOT.'/san-pham';?>">sản phẩm</a></li>
        <li class="nav-item"><a class="nav-link color-a" href="<?= URL_ROOT.'/tin-tuc';?>">tin tức</a></li>
        <li class="nav-item"><a class="nav-link color-a" href="<?= URL_ROOT.'/lien-he';?>">Liên hệ</a></li>
        <li class="nav-item"><a class="nav-link color-a" href="<?= URL_ROOT.'/gio-hang';?>">Giỏ Hàng</a></li>
    </ul>
  </div> 
</nav>
         