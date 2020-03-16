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

?>