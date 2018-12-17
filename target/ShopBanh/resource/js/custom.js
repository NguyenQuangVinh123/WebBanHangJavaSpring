$(document).ready(function(){
    $("#btn-login").click(function (){
        var email = $("#email").val();
        var password = $("#password").val();
        $.ajax({
            url : '/api/KiemTraDangNhap',
            type : 'GET',
            data :{
                email : email,
                password : password
            },
            success: function (value) {
                if(value == "true"){
                    var link = window.location.href;
                    var link_cut = link.replace("dangnhap/","");
                    window.location = link_cut;
                }else{
                    alert("Email hoac mat khau sai")
                }
            }
        })

    });

    $(".btn-giohang").click(function () {
       var tensp= $(this).closest(".single-item").find(".single-item-title").attr("data-namesp");
        var masp = $(this).closest(".single-item").find(".masp").attr("data-masp");
        var giasp= $(this).closest(".single-item").find(".single-item-price").attr("data-gia");
        var hinhsp= $(this).closest(".single-item").find(".img-top").attr("data-hinhsp");
        var soluong = $("#masoluong").attr("data-masoluong");

        $.ajax({
                url : '/api/ThemGioHang',
                type : 'GET',
                data :{
                    soluong :soluong,
                    hinhsp : hinhsp,
                    giatien : giasp,
                    tensp : tensp,
                    masp : masp,
                },
                success: function (value) {

                }
            })
    })
});

