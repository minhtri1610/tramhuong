$(function () {
    $('.btn-add-cart').click(function () {

        let link = $(this).attr('data-link');
        let name = $(this).attr('data-name');
        let id = $(this).attr('data-id');
        let img = $(this).attr('data-img');

        $.ajax({
            type : "post", //Phương thức truyền post hoặc get
            dataType : "json", //Dạng dữ liệu trả về xml, json, script, or html
            url : URL_AJAX, //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
            data : {
                action: "saveSessionItem", //Tên action
                link : link,
                name : name,
                id : id,
                img : img
            },
            context: this,
            beforeSend: function(){
                //Làm gì đó trước khi gửi dữ liệu vào xử lý
            },
            success: function(response) {
                console.log(response);
                //Làm gì đó khi dữ liệu đã được xử lý
                if(response.success) {
                    $('.alert-cart').show();
                    $('.number-cart').html(response.data);
                    $('html,body').animate({
                        scrollTop: $(".head-info").offset().top
                    }, 'slow');
                }
                else {
                    alert('Đã có lỗi xảy ra');
                }
            },
            error: function( jqXHR, textStatus, errorThrown ){
                //Làm gì đó khi có lỗi xảy ra
                console.log( 'The following error occured: ' + textStatus, errorThrown );
            }
        })
        return false;
    })

    $('.i-close').click(function (params) {
        $('.alert-cart').hide();
    })

    var header = document.getElementById("navFixed");
    var sticky = header.offsetTop;
    var footer = $(".page-footer");
    var stick_footer = footer.height();
    var height_body = $(window).height();
    var stick_fixed = height_body - stick_footer;

    window.onscroll = function(ev) {
        if ((window.innerHeight + window.scrollY) >= (document.body.offsetHeight - 241)) {
            // you're at the bottom of the page
            $('.section-payment').addClass('section-tmp-payment');
        }else{
            $('.section-payment').removeClass('section-tmp-payment');
        }
        fixedHeader();
    };

    function fixedHeader() {
        // if($(window).width() > 472){
            if (window.pageYOffset > sticky) {
                header.classList.add("sticky");
            } else {
                header.classList.remove("sticky");
            }
        // }
    }
    // section-tmp-payment

    $('.delete-item').click(function () {
        var r = confirm("Bạn có chắc chắn muốn xóa sản phẩm này?");
        if (r == true) {
            let id_product_del = $(this).attr('data-id');
            // ajax delete item
            update_product(id_product_del, 0, 'delete');
        } 
    });

    $('.item-subtract').click(function () {
        let id_product_del = $(this).attr('data-id');
        let number_product_del = 1;
        let num_current = $('#' + id_product_del + ' .number-item').val();
        console.log(num_current);
        if( num_current != 1 && num_current > 1 ){
            num_current--;
            $('#' + id_product_del + ' .number-item').val(num_current);
            update_product(id_product_del, number_product_del, 'substract');
        }else{
            alert('Vui lòng chọn số lượng lớn hơn 1!');
        }
    });

    $('.item-addtract').click(function () {
        let id_product_del = $(this).attr('data-id');
        let number_product_del = 1;
        let num_current = $('#' + id_product_del + ' .number-item').val();
        console.log(num_current);
        if( num_current < 99999 ){
            num_current++;
            $('#' + id_product_del + ' .number-item').val(num_current);
            update_product(id_product_del, number_product_del, 'addstract');
        }else{
            alert('Số lượng vượt mức cho phép!');
        }
    });

    $( '.number-item' ).focusout(function() {
        let id_product_del = $(this).attr('data-id');
        let number_product_del = $(this).val();
        console.log(number_product_del);
        // ajax delete item
        if(number_product_del > 0){
            update_product(id_product_del, number_product_del, 'edit');
        }else{
            alert('Số lượng nhập vào không hợp lệ!');
        }
        
    });

    function update_product(id, num, type) {
        $.ajax({
            type : "post", //Phương thức truyền post hoặc get
            dataType : "json", //Dạng dữ liệu trả về xml, json, script, or html
            url : URL_AJAX, //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
            data : {
                action : "updateProduct", //Tên action
                id : id,
                number_delete : num,
                type : type
            },
            context: this,
            beforeSend: function(){
                //Làm gì đó trước khi gửi dữ liệu vào xử lý
            },
            success: function(response) {
                //Làm gì đó khi dữ liệu đã được xử lý
                if(response.success) {
                    if(response.data.data){
                        console.log(response.data.data);
                        let db = response.data.data;
                        let total = db.count;
                        let num_current = db.number_item;
                        switch (type) {
                            case 'delete':
                                $('#'+id).hide();
                                break;
                            case 'addstract':
                            case 'substract':
                            default:
                                $('#'+id + ' .number-item').val(num_current);
                                break;
                        }
                        $('.number-sp').text(total);
                        $('.number-cart ').text(total);
                        if(total == 0){
                            $('.right-cart').html('');
                        }
                    }
                }
                else {
                    alert('Đã có lỗi xảy ra');
                }
            },
            error: function( jqXHR, textStatus, errorThrown ){
                //Làm gì đó khi có lỗi xảy ra
                console.log( 'The following error occured: ' + textStatus, errorThrown );
            }
        })
    }

    $('select[name="provice"]').change(function () {
        let name_provice = $(this).val();
        console.log(name_provice);
        $.ajax({
            type : "post", //Phương thức truyền post hoặc get
            dataType : "json", //Dạng dữ liệu trả về xml, json, script, or html
            url : URL_AJAX, //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
            data : {
                action : "getTown", //Tên action
                name_provice : name_provice
            },
            context: this,
            beforeSend: function(){
                //Làm gì đó trước khi gửi dữ liệu vào xử lý
            },
            success: function(response) {
                //Làm gì đó khi dữ liệu đã được xử lý
                if(response.success) {
                    console.log(response.data);
                    if(response.data){
                        let arr_town = response.data;
                        let html = '';
                        $('select[name="town"]').html('');
                        html += '<option value="">---Quận/huyện---</option>';
                        arr_town.forEach(function (k_arr, v_arr) {
                            html += '<option value="'+k_arr+'">'+k_arr+'</option>';
                        })
                        $('select[name="town"]').html(html);
                    }
                    
                }
                else {
                    alert('Đã có lỗi xảy ra');
                }
            },
            error: function( jqXHR, textStatus, errorThrown ){
                //Làm gì đó khi có lỗi xảy ra
                console.log( 'The following error occured: ' + textStatus, errorThrown );
            }
        })
    })

    $('.btn-checkout').click(function () {
        let arr = [];
        arr['provice'] = $('#form-checkout select[name="provice"]').val();
        arr['town'] = $('#form-checkout select[name="town"]').val();
        arr['email'] = $('#form-checkout input[name="email"]').val();
        arr['customer'] = $('#form-checkout input[name="customer"]').val();
        arr['address'] = $('#form-checkout textarea[name="address"]').val();
        arr['remask'] = $('#form-checkout textarea[name="remask"]').val();
        let check = validateInputCheckout(arr);
        if(check.length == 0){
            $('.box-err').hide();
            saveDataOrder(arr);
            //send ajax;
        }else{
            $('.box-err').show();
            renderError(check);
        }
    })

    function renderError(data) {
        let html = '';
        if(data){
            html += "<ul>";
            data.forEach(function (params) {
                console.log(params);
                    html += "<li>";
                        html += params;
                    html += "</li>";
            })
            html += "</ul>";
        }
        $('html,body').animate({
            scrollTop: $("#form-checkout").offset().top
        }, 'slow');
        $('.box-err').html(html);
    }

    function validateInputCheckout(data) {
        let err = [];
        if(data['email'] == ''){
            err.push('Vui lòng nhập email or số điện thoại!');
        }

        if(data['address'] == ''){
            err.push('Vui lòng nhập địa chỉ giao hàng!')
        }

        if(data['customer'] == ''){
            err.push('Vui lòng nhập tên khách hàng!')
        }

        if(data['provice'] == ''){
            err.push('Vui lòng chọn Tỉnh!')
        }

        if(data['town'] == ''){
            err.push('Vui lòng chọn quận huyện!')
        }

        return err;
    }

    function saveDataOrder(data) {
        $.ajax({
            type : "post", //Phương thức truyền post hoặc get
            dataType : "json", //Dạng dữ liệu trả về xml, json, script, or html
            url : URL_AJAX, //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
            data : {
                action : "saveOrder", //Tên action
                email : data['email'],
                customer : data['customer'],
                provice : data['provice'],
                town : data['town'],
                address : data['address'],
                remask : data['remask']
            },
            context: this,
            beforeSend: function(){
                //Làm gì đó trước khi gửi dữ liệu vào xử lý
            },
            success: function(response) {
                //Làm gì đó khi dữ liệu đã được xử lý
                if(response.success) {
                    window.location.href = URL_ROOT+'/confirm-cart';
                }
                else {
                    alert('Đã có lỗi xảy ra');
                }
            },
            error: function( jqXHR, textStatus, errorThrown ){
                //Làm gì đó khi có lỗi xảy ra
                console.log( 'The following error occured: ' + textStatus, errorThrown );
            }
        })
    }

    $('#btn-order').click(function (params) {
        $(this).attr('disabled', 'disabled');
        $.ajax({
            type : "post", //Phương thức truyền post hoặc get
            dataType : "json", //Dạng dữ liệu trả về xml, json, script, or html
            url : URL_AJAX, //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
            data : {
                action : "sendOrder", //Tên action
            },
            context: this,
            beforeSend: function(){
                //Làm gì đó trước khi gửi dữ liệu vào xử lý
            },
            success: function(response) {
                //Làm gì đó khi dữ liệu đã được xử lý
                $('#btn-order').removeAttr('disabled');
                if(response.success) {
                    window.location.href = URL_ROOT+'/order-success';
                }
                else {
                    alert('Đã có lỗi xảy ra');
                }
            },
            error: function( jqXHR, textStatus, errorThrown ){
                //Làm gì đó khi có lỗi xảy ra
                console.log( 'The following error occured: ' + textStatus, errorThrown );
            }
        })
    })

    function checkEmailorPhoneNum(input) {
        
    }
})