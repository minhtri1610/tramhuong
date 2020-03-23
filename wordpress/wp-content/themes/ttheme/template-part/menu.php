<?php
  $list_menu[0] = ['','Trang chủ'];
  $list_menu[1] = ['gioi-thieu', 'Giới thiệu'];
  $list_menu[2] = ['san-pham' ,'Sản phẩm'];
  $list_menu[3] = ['tin-tuc' ,'Tin Tức'];
  $list_menu[4] = ['lien-he','Liên Hệ'];
  $list_menu[5] = ['gio-hang', 'Giỏ Hàng'];
  $page_current = get_query_var('pagename');
  
?>
<nav class="navbar navbar-expand-md bg-dark navbar-dark bg-gradient-menu" id="navFixed">
    <!-- Toggler/collapsibe Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleMenu">
    <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Navbar links -->
    <div class="container">
        <div class="collapse navbar-collapse" id="collapsibleMenu">
            <ul class="navbar-nav">
                <?php 
                foreach ($list_menu as $key => $value) {
                    $active = '';
                    if($value[0] == $page_current){
                    $active = ' active ';
                    } 
                ?>
                    <li class="nav-item <?= $active; ?>"><a class="nav-link color-a" href="<?= URL_ROOT.'/'.$value[0];?>"><?= $value[1];?></a></li>
                <?php 
                }
                ?>
            </ul>
        </div> 
    </div>
</nav>
         