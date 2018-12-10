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
})