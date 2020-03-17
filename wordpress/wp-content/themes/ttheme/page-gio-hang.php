<?php get_header(); ?>

<main>
    <div class="container">
    <?php
        require dirname( __FILE__ ).'/init/product.php';
        // print_r($province);exit();
        $count = 0;
        if(isset($_SESSION['data_cart'])){
            $count = count($_SESSION['data_cart']);
        }

    ?>
        <div class="section-page">
            <div class="row">
                <div class="col-md-12 title-header-page">
                    <h1>Giỏ hàng (<span class="number-sp"><?= $count;?></span> sản phẩm)</h1>
                </div>
            </div>
            <div class="row containt-cart">
                <?php 
                    if(isset($_SESSION['data_cart']) && !empty($_SESSION['data_cart'])):
                    $dataProduct = getProduct();
                ?>
                    <!-- danh sách sản phẩm -->
                    <div class="col-md-8 left-cart">
                        <?php foreach ($dataProduct as $key => $value) { ?>
                            <div class="row checkout-item" id="<?= $value['id'];?>">
                                <div class="col-md-3 item-cart">
                                    <img src="<?= $value['img'];?>" alt="<?= $value['name'];?>">
                                </div>
                                <div class="col-md-6 item-info-cart">
                                    <a href="<?= $value['link'];?>"><p><?= $value['name'];?></p></a>
                                    <div class="btn-delete">
                                        <button class="delete-item" data-number = "<?= $value['sl'];?>" data-id="<?= $value['id'];?>">Xóa</button>
                                    </div>
                                </div>
                                <div class="col-md-3 item-action-cart">
                                    <div class="list-button-cart">
                                        <span class="item-subtract" data-id="<?= $value['id'];?>">-</span>
                                        <input type="number" data-id="<?= $value['id'];?>" class="number-item" value="<?= $value['sl']?>">
                                        <span class="item-addtract" data-id="<?= $value['id'];?>">+</span>
                                    </div>
                                </div>
                            </div>
                        <?php
                            }
                        ?>
                    </div>
                    <!-- Thông tin khách hàng đặt hàng -->
                    <div class="right-cart col-md-4">
                        <form action="" id="form-checkout">
                            <div class="box-err">

                            </div>
                            <label for="Email">Email hoặc Số điện thoại</label>
                            <input type="text" name = "email">
                            <label for="">Họ tên khách hàng</label>
                            <input type="text" name = "customer">
                            <label for="">Tỉnh</label>
                            <select name="provice" id="">
                                <option value="">---Tỉnh---</option>
                                <?php if(isset($province) && !empty($province)){
                                    foreach ($province as $key => $value) {
                                ?>
                                    <option value="<?= $key;?>"><?= $key;?></option>
                                <?php 
                                        }
                                    } 
                                ?>
                            </select>
                            <label for="">Quận/huyện</label>
                            <select name="town" id="">
                                <option value="">---Quận/huyện---</option>
                            </select>
                            <label for="">Địa chỉ</label>
                            <textarea name="address" id="" cols="30" rows="2"></textarea>
                            <label for="">Ghi Chú</label>
                            <textarea name="remask" id="" cols="30" rows="3"></textarea>
                            <button type="button" class="btn-checkout">Tiến hành đặt hàng</button>
                        </form>
                    </div>
                <?php else:?>
                    <div class="col-md-12">
                        <p class="text-red pd-15">Không có sản phẩm nào trong giỏ hàng!</p>
                    </div>
                <?php endif;?>
            </div>
        </div>
    </div>
</main>

<?php get_footer();?>