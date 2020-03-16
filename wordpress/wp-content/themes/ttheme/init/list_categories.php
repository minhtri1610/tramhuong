<?php
    function quan_ly_tin_tuc()
    {
        /*
        * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
        */
        $label = array(
            'name' => 'Tin Tức', //Tên post type dạng số nhiều
            'singular_name' => 'Danh sách tin tức' //
        );
    
        /*
        * Biến $args là những tham số quan trọng trong Post Type
        */
        $args = array(
            'labels' => $label, //Gọi các label trong biến $label ở trên
            'description' => 'Tạo bảng tin mới', //Mô tả của post type
            'supports' => array(
                'title',
                'editor',
                'excerpt',
                'author',
                'thumbnail',
                'comments',
                'trackbacks',
                'revisions',
                'custom-fields'
            ), //Các tính năng được hỗ trợ trong post type
            'taxonomies' => array( 'category', 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
            'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
            'public' => true, //Kích hoạt post type
            'show_ui' => true, //Hiển thị khung quản trị như Post/Page
            'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
            'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
            'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
            'menu_position' => 2, //Thứ tự vị trí hiển thị trong menu (tay trái)
            'menu_icon' => 'dashicons-editor-paste-word', //Đường dẫn tới icon sẽ hiển thị
            'can_export' => true, //Có thể export nội dung bằng Tools -> Export
            'has_archive' => true, //Cho phép lưu trữ (month, date, year)
            'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
            'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
            'capability_type' => 'post' //
        );
    
        register_post_type('tintuc', $args); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
    
    }
    add_action('init', 'quan_ly_tin_tuc');


    function san_pham()
    {
        /*
        * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
        */
        $label = array(
            'name' => 'Quản Lý Sản Phẩm', //Tên post type dạng số nhiều
            'singular_name' => 'Quản Lý Sản Phẩm' //
        );
    
        /*
        * Biến $args là những tham số quan trọng trong Post Type
        */
        $args = array(
            'labels' => $label, //Gọi các label trong biến $label ở trên
            'description' => 'Thêm sản phẩm', //Mô tả của post type
            'supports' => array(
                'title',
                'editor',
                'excerpt',
                'author',
                'thumbnail',
                'comments',
                'trackbacks',
                'revisions',
                'custom-fields'
            ), //Các tính năng được hỗ trợ trong post type
            'taxonomies' => array( 'category', 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
            'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
            'public' => true, //Kích hoạt post type
            'show_ui' => true, //Hiển thị khung quản trị như Post/Page
            'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
            'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
            'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
            'menu_position' => 4, //Thứ tự vị trí hiển thị trong menu (tay trái)
            'menu_icon' => 'dashicons-editor-paste-word', //Đường dẫn tới icon sẽ hiển thị
            'can_export' => true, //Có thể export nội dung bằng Tools -> Export
            'has_archive' => true, //Cho phép lưu trữ (month, date, year)
            'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
            'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
            'capability_type' => 'post' //
        );
    
        register_post_type('sanpham', $args); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
    
    }
    add_action('init', 'san_pham');

    function quan_ly_anh_bia()
    {
        /*
        * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
        */
        $label = array(
            'name' => 'Quản lý ảnh bìa', //Tên post type dạng số nhiều
            'singular_name' => 'Quản lý ảnh bìa' //
        );
    
        /*
        * Biến $args là những tham số quan trọng trong Post Type
        */
        $args = array(
            'labels' => $label, //Gọi các label trong biến $label ở trên
            'description' => 'Tạo Poster', //Mô tả của post type
            'supports' => array(
                'title',
                'editor',
                'excerpt',
                'author',
                'thumbnail',
                'comments',
                'trackbacks',
                'revisions',
                'custom-fields'
            ), //Các tính năng được hỗ trợ trong post type
            'taxonomies' => array( 'category', 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
            'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
            'public' => true, //Kích hoạt post type
            'show_ui' => true, //Hiển thị khung quản trị như Post/Page
            'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
            'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
            'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
            'menu_position' => 7, //Thứ tự vị trí hiển thị trong menu (tay trái)
            'menu_icon' => 'dashicons-editor-paste-word', //Đường dẫn tới icon sẽ hiển thị
            'can_export' => true, //Có thể export nội dung bằng Tools -> Export
            'has_archive' => true, //Cho phép lưu trữ (month, date, year)
            'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
            'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
            'capability_type' => 'post' //
        );
    
        register_post_type('postercategory', $args); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
    
    }
    add_action('init', 'quan_ly_anh_bia');
?>