$(document).ready(function () {
    $("#btn-login").click(function () {
        var email = $("#email").val();
        var password = $("#password").val();
        $.ajax({
            url: '/api/KiemTraDangNhap',
            type: 'GET',
            data: {
                email: email,
                password: password
            },
            success: function (value) {
                if (value == "true") {
                    var link = window.location.href;
                    var link_cut = link.replace("dangnhap/", "");
                    window.location = link_cut;
                } else {
                    alert("Email hoac mat khau sai")
                }
            }
        })

    });
    $("#cart").click(function () {
        alert("A");
        var a = $(".soluongiohang").val();
        if(a == "()" || null){
            alert("Bạn vui lòng chọn bánh cần mua!!!");
        }
    });

    $(".btn-giohang").click(function () {
        var tensp = $(this).closest(".single-item").find(".single-item-title").attr("data-namesp");
        var masp = $(this).closest(".single-item").find(".masp").attr("data-masp");
        var giasp = $(this).closest(".single-item").find(".single-item-price").attr("data-gia");
        var format_giasp = giasp.toLocaleString();
        var hinhsp = $(this).closest(".single-item").find(".img-top").attr("data-hinhsp");
        var soluong = $("#masoluong").attr("data-masoluong");

        $.ajax({
            url: '/api/ThemGioHang',
            type: 'GET',
            data: {
                soluong: soluong,
                hinhsp: hinhsp,
                giatien: format_giasp,
                tensp: tensp,
                masp: masp,
            },
            success: function (value) {
                $(".soluongiohang").html("<span>" + "(" + value + ")" + "</span>");


            }

        })
    });

    Gantongtien();

    function Gantongtien() {
        var tongtiensp = 0;

        $(".thanhtien").each(function () {
            var thanhtien = $(this).text();
            var format_thanhtien = parseInt(thanhtien);

            tongtiensp = tongtiensp + format_thanhtien;

            $("#tongtien").html(tongtiensp + "");
        });
    }


    $(".soluong-giohang").change(function () {
        var sl = $(this).val();
        var thanhtien = $(this).closest(".media").find(".giatien").attr("data-value");

        var thanhtiensauupdate = sl * thanhtien;
        $(this).closest(".media").find(".thanhtien").html(thanhtiensauupdate)
        Gantongtien();
    });

    $(".btn-xoa").click(function () {
        var self = $(this);
        // var tensp = $(this).closest(".single-item").find(".single-item-title").attr("data-namesp");
        var masp = $(this).closest(".your-order-item").find(".masp").attr("data-masp");


        $.ajax({
            url: '/api/XoaGioHang',
            type: 'GET',
            data: {
                // tensp: tensp,
                masp: masp,
            },
            success: function (value) {
                    self.closest(".your-order-item").remove();
                    Gantongtien(true);
            }

        })
    });


});

