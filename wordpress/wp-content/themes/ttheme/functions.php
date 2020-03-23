<?php
/*
 *  Author: Minh Tri VV-JSC
 *  URL: T-Theme.com | @ttheme
 *  Theme perfect
 */
	define('THEME_URL',get_template_directory_uri());
	define('URL_CSS', THEME_URL.'/css' );
	define('URL_JS', THEME_URL.'/js' );
	define('URL_IMG', THEME_URL.'/image' );
	define('URL_ROOT', get_home_url());
	define('MY_PHONE', '0928499959');
	define('NAME_WEB', 'NHANG TRẦM PHƯỚC LỘC');
	define('ADD', 'Thôn Trinh Long Khánh - Mỹ Cát - Phù Mỹ - Bình Định');
	define('EMAIL_SEND', 'chuaphuoclocvn@gmail.com');
	define('PASS_PUBLIC', 'adidaphatvn1976');
	define('NAME_DOIMAIN', 'nhangtramphuocloc.com');
	define('ZALO', 'link zalo');
	define('FB_LINK', 'fb.com/nhangtramphuocloc');

	if ( ! function_exists( 'ttheme_setup' ) ) :
		function ttheme_setup() {
			load_theme_textdomain( 'ttheme', get_template_directory() . '/languages' );
			add_theme_support( 'automatic-feed-links' );
			add_theme_support( 'title-tag' );
			add_theme_support( 'post-thumbnails' );
			set_post_thumbnail_size( 1568, 9999 );
			add_theme_support(
				'html5',
				array(
					'search-form',
					'comment-form',
					'comment-list',
					'gallery',
					'caption',
				)
			);
			add_theme_support(
				'custom-logo',
				array(
					'height'      => 190,
					'width'       => 190,
					'flex-width'  => false,
					'flex-height' => false,
				)
			);
			add_theme_support( 'post-formats',
				array(
						'video',
						'image',
						'audio',
						'gallery'
				)
			);

		}
	endif;
	add_action( 'after_setup_theme', 'ttheme_setup' );
		// import init function
		
    require dirname( __FILE__ ).'/init/product.php';
	require dirname( __FILE__ ).'/init/init.php';
	
	function devvn_wp_corenavi($custom_query = null, $paged = null) {
		global $wp_query;
		if($custom_query) $main_query = $custom_query;
		else $main_query = $wp_query;
		$paged = ($paged) ? $paged : get_query_var('paged');
		$big = 999;
		$total = isset($main_query->max_num_pages)?$main_query->max_num_pages:'';
		if($total > 1) echo '<div class="pagenavi">';
		echo paginate_links( array(
			'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
			'format' => '?paged=%#%',
			'current' => max( 1, $paged ),
			'total' => $total,
			'mid_size' => '10', // Số trang hiển thị khi có nhiều trang trước khi hiển thị ...
			'prev_text'    => __('<< Prev','devvn'),
			'next_text'    => __('Next >>','devvn'),
		) );
		if($total > 1) echo '</div>';
	}
	//code giỏ hàng
	add_action('init', 'myStartSession', 1);
	function myStartSession() {
		if(!session_id()) {
			session_start();
		}
	}
	add_action( 'wp_ajax_saveSessionItem', 'order_init' );
	add_action( 'wp_ajax_nopriv_saveSessionItem', 'order_init' );

	function order_init() {
		$link  = (isset($_POST['link']))? $_POST['link'] : '';
		$name       = (isset($_POST['name']))? $_POST['name'] : '';
		$img              = (isset($_POST['img']))? $_POST['img'] : '';
		$id          = (isset($_POST['id']))? $_POST['id'] : '';

		//session_cart
		$item_order = [];
		$item_order = ['id' => $id, 'name' => $name, 'sl' => 1, 'link' => $link, 'img' => $img];

		if(isset($_SESSION['data_cart']) && !empty($_SESSION['data_cart'])){
			$tmp_data   = [];
			$tmp_data   = $_SESSION['data_cart'];
			$tmp_data[] = $item_order;
			$_SESSION['data_cart'] = $tmp_data;
		} else{
			$tmp_data[] = $item_order;
			$_SESSION['data_cart'] = $tmp_data;
		}

		$count = 0;
		$count = count($_SESSION['data_cart']);
		wp_send_json_success($count);
		die();//bắt buộc phải có khi kết thúc
	}

	add_action( 'wp_ajax_updateProduct', 'update_product' );
	add_action( 'wp_ajax_nopriv_updateProduct', 'update_product' );

	function update_product() {
		$id_product  = (isset($_POST['id']))? $_POST['id'] : 0;
		$number_delete       = (isset($_POST['number_delete']))? $_POST['number_delete'] : 0;
		$type              = (isset($_POST['type']))? $_POST['type'] : '';

		if(isset($_SESSION['data_cart']) && !empty($_SESSION['data_cart'])){
			$tmp_data = $_SESSION['data_cart'];
			$edit_data = [];
			switch ($type) {
				case 'delete'://xóa sp
					foreach ($tmp_data as $kdel => $vdel) {
						if($vdel['id'] != $id_product){
							$edit_data[] = $tmp_data[$kdel]; 
						}
					}
					break;
				case 'addstract'://thêm sp
					$cnt_add = 0;
					$tmp_item_add = [];
					$cnt_total = count($tmp_data);
					foreach ($tmp_data as $kad => $vad) {
						if(($vdel['id'] == $id_product) && $cnt_add == 0){
							$cnt_total++;
							$tmp_item_add = $tmp_data[$kad];
							break;
						}
					}

					$cnt_add = 0;
					for ($i=0 ; $i < $cnt_total; $i++) {
						if(($tmp_data[$i]['id'] == $id_product) && $cnt_add == 0){
							$cnt_add++;
							$tmp_item_add = $tmp_data[$i]; 
						}
						$edit_data[] = $tmp_data[$i];
						if($i == ($cnt_total-1)){
							$edit_data[] = $tmp_item_add;
						}
					}
					break;
				case 'substract'://bớt sp
					$cnt_add = 0;
					foreach ($tmp_data as $kdel => $vdel) {
						if(($vdel['id'] == $id_product) && $cnt_add == 0){
							$cnt_add++;
						}else{
							$edit_data[] = $tmp_data[$kdel]; 
						}
					}
					break;
				default://case edit session
					$cnt_edit = 0;
					$tmp_item = [];
					foreach ($tmp_data as $kdel => $vdel) {
						if(($vdel['id'] == $id_product)){//xóa hết sp có id
							$tmp_item = $tmp_data[$kdel];//gán tạm để cập nhật lại số lượng
						}else{
							$edit_data[] = $tmp_data[$kdel]; 
						}
					}
					
					if(!empty($tmp_item)){
						$cnt_tmp_item = count($edit_data);
						$tmp_total = $cnt_tmp_item + $number_delete;
						$tmpData = [];
						for ($i=0; $i < $tmp_total; $i++) { 
							if($i < $cnt_tmp_item){
								array_push($tmpData, $edit_data[$i]);
							}else{
								array_push($tmpData, $tmp_item);
							}
						}
						$edit_data = [];
						$edit_data = $tmpData;
					}
					break;
			}
			$_SESSION['data_cart'] = $edit_data;//cập nhật lại session
			
		}
		$res = [];
		if(isset($_SESSION['data_cart'])){
			$count = count($_SESSION['data_cart']);
			$res['data']['count'] = $count;
			$res['data']['number_item'] = countProduct($id_product);
		}
		wp_send_json_success($res);
		die();
	}

	function countProduct($id_pro)
	{
		$count = 0;
		if(isset($_SESSION['data_cart']) && !empty ($_SESSION['data_cart'])){
			foreach ($_SESSION['data_cart'] as $key => $value) {
				if($value['id'] == $id_pro){
					$count++;
				}
			}
		}
		return $count;
	}

	add_action( 'wp_ajax_getTown', 'getTown' );
	add_action( 'wp_ajax_nopriv_getTown', 'getTown' );
	function getTown()
	{
		if(isset($_POST['name_provice'])&& !empty($_POST['name_provice'])){
			$dataProvince = getProvinceAjax();
			$dataTown = $dataProvince[$_POST['name_provice']];
			wp_send_json_success($dataTown);
			die();
		}
	}

	add_action( 'wp_ajax_saveOrder', 'saveOrder' );
	add_action( 'wp_ajax_nopriv_saveOrder', 'saveOrder' );
	function saveOrder()
	{
		$data = [];
		if(isset($_POST)&& !empty($_POST)){
			$item = [];
			$email = isset($_POST['email']) ? $_POST['email'] : '';

			if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
				$item['email'] = trim($email);
				$item['phone'] = '';
			} else {
				$item['email'] = '';
				$item['phone'] = trim($email);
			}
			$item['customer'] = isset($_POST['customer']) ? $_POST['customer'] : '';
			$item['provice'] = isset($_POST['provice']) ? $_POST['provice'] : '';
			$item['town'] = isset($_POST['town']) ? $_POST['town'] : '';			
			$item['address'] = isset($_POST['address']) ? $_POST['address'] : '';
			$item['remask'] = isset($_POST['remask']) ? $_POST['remask'] : '';	
			$_SESSION['data_customer'] = $item;
		}
		wp_send_json_success($data);
		die();
	}

	add_action( 'wp_ajax_sendOrder', 'sendOrder' );
	add_action( 'wp_ajax_nopriv_sendOrder', 'sendOrder' );
	function sendOrder()
	{
		if(isset($_SESSION['data_customer']) && !empty($_SESSION['data_customer'])){
			$data_user = $_SESSION['data_customer'];
			if(isset($data_user['email']) && !empty($data_user['email'])){
				//send email
				prefix_send_email_to_admin('user');
			}
			//send
			prefix_send_email_to_admin('admin');
			//send email addmin

		}
	}

	// đặt hàng
	$url_link = $_SERVER['DOCUMENT_ROOT'] . '/wp-content/themes/ttheme/';
	require ( $url_link . 'PHPMailer/src/PHPMailer.php' );
	require ( $url_link . 'PHPMailer/src/Exception.php' );
	require ( $url_link . 'PHPMailer/src/SMTP.php' );
	function prefix_send_email_to_admin($type) {
		if(isset($_SESSION["data_cart"])){
			$tmp_cart = getProduct();
			$html = '';
			$html .= '<tr>';
				$html .= '<td style = "width: 250px">';
					$html .= '<b>Tên sản phẩm</b>';
				$html .= '</td>';
				$html .= '<td style = "width: 150px">';
					$html .= '<b>Số lượng</b>';
				$html .= '</td>';
			$html .= '</tr>';
			foreach ($tmp_cart as $key => $value) {
				
				$html .= '<tr>';
					$html .= '<td>';
						$html .= '<a href="'. $value['link'].'">';
							$html .= $value['name'];
						$html .= '</a>';
					$html .= '</td>';
					$html .= '<td>';
						$html .= $value['sl'];
					$html .= '</td>';
				$html .= '</tr>';
						
			}
			if($type=='admin'){
				$html .= '<p><b>Tên khách hàng: </b>'.$_SESSION['data_customer']['customer'].'</p>';
			}
			$html .= '<p><b>SĐT đặt hàng: </b>'.$_SESSION['data_customer']['phone'].'</p>';
			$html .= '<p><b>Địa chỉ nhận hàng: </b>'.$_SESSION['data_customer']['address'].$_SESSION['data_customer']['town'].$_SESSION['data_customer']['provice'].'</p>';
			$html .= '<p><b>----------------------</b></p>';
			$html .= '<p><b>'.NAME_WEB.'</b></p>';
			$html .= '<p><b>Địa chỉ</b>: '.ADD.'</p>';
			$html .= '<p><b>Số điện thoại</b>: '.MY_PHONE.'</p>';
			
			
			$mail = new PHPMailer\PHPMailer\PHPMailer();                              // Passing `true` enables exceptions
			//Server settings
			// $mail->SMTPDebug = 2;                                 // Enable verbose debug output
			$mail->isSMTP();                                      // Set mailer to use SMTP
			$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
			$mail->SMTPAuth = true;                               // Enable SMTP authentication
			$mail->Username = EMAIL_SEND;                 // SMTP username
			$mail->Password = PASS_PUBLIC;                           // SMTP password
			$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
			$mail->Port = 587;                                    // TCP port to connect to

			//Recipients
			$mail->setFrom(EMAIL_SEND, NAME_WEB);
			$mail->addAddress(EMAIL_SEND, "EMAIL TỰ ĐỘNG TỪ HỆ THỐNG WEBSITE");     // Add a recipient
			$mail->AddCC(EMAIL_SEND);
			//Content
			$mail->isHTML(true);                               // Set email format to HTML
			$mail->Subject = 'Xác nhận đơn hàng từ '.NAME_WEB;
			$mail->CharSet = "UTF-8";
			if($type == 'user'){
				$body_mail = '<b>Cám ơn Anh/chị! Đơn hàng đã được gửi. Chúng tôi sẽ liên lạc sớm nhất để xác nhận đơn hàng.</b> <br />'.
				'Nội dung đơn hàng<br />'
				.'----------------------<br>'
				.$html;
			}else{
				$body_mail = '<b>Thông tin đơn hàng, Vui lòng liên hệ với khách hàng để xác nhận đơn hàng.</b> <br />'
				.'----------------------<br>'
				.$html;
			}
			
			$mail->Body    = $body_mail;
			$mail->IsHTML(true); 
			$mail->SMTPOptions = array(
				'ssl' => array(
					'verify_peer' => false,
					'verify_peer_name' => false,
					'allow_self_signed' => true
				)
			);
			// print_r($body_mail);
			// print_r($mail->send());die();
			if ( $mail->send() ) {
				session_destroy();
				// wp_redirect(URL_ROOT."/success");
			}
		}
	}

?>