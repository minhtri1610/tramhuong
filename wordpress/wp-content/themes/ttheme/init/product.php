<?php
    function getProduct()
    {
        $res = [];
        if(isset($_SESSION['data_cart']) && !empty($_SESSION['data_cart'])){
            $data = $_SESSION['data_cart'];
            $product = [];
            foreach ($data as $key => $value) {
                $id = $value['id'];
                if(!empty($product)){
                    $check_isset = false;
                    foreach ($product as $k_pro => $v_pro) {
                        if($v_pro['id'] == $id){
                            $check_isset = true;
                            $product[$k_pro]['sl'] = (int)$product[$k_pro]['sl'] + 1;
                            break;
                        }
                    }
                    if(!$check_isset){
                        $product[] = $data[$key];
                    }
                }else{
                    $product[] = $data[$key];
                }
            }
            $res = $product;
        }
        return $res;
    }

    function getInfoCustomer()
    {
        $res = [];
        if(isset($_SESSION['data_customer']) && !empty($_SESSION['data_customer'])){
            $res = $_SESSION['data_customer'];
        }
        return $res;
    }