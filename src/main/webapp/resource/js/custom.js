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
                    // var node = document.createElement("span");
                    // node.className = "cart-item-title";
                    //
                    // var textnode = document.createTextNode(tensp);
                    // node.appendChild(textnode);
                    // var x = document.getElementsByClassName("img-small")[0].getAttribute("src");
                    // var y = x+hinhsp;
                    // var node1 = document.createElement("img");
                    // node1.setAttribute("src", y) ;
                    // node1.setAttribute("width", "50px") ;
                    // node1.setAttribute("height", "50px") ;



                    // node1.appendChild(textnode);
                    // document.getElementById("cart-items").appendChild(node1);
                    //  document.getElementById("cart-items").appendChild(node);



                    // var textnode = document.createAttribute("src",y);
                    // var node_img = document.createElement("img");
                    // // node_img.className("")
                    // node_img.appendChild(textnode);
                    // document.getElementById("cart-items").appendChild(node_img);
                }
            }).done(function () {
            $.ajax({
                url: '/api/LaySoLuongGioHang',
                type: 'GET',
                success: function (value) {
                    $(".soluongiohang").html( "<span>" + "(" +  value + ")" + "</span>") ;
                }
            })
        })
    })
});

