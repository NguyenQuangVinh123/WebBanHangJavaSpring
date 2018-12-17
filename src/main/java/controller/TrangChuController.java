package controller;

import entity.NhanVien;
import entity.SanPham;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import service.NhanVienService;
import service.SanPhamService;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
@RequestMapping("/")

public class TrangChuController {

    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    NhanVienService nhanVienService;

    @Autowired
    SanPhamService sanPhamService;




    @GetMapping
    @Transactional
    public String ViewTrangChu( ModelMap modelMap, HttpSession httpSession)
    {
        System.out.println(httpSession.getAttribute("email"));
        if(httpSession.getAttribute("email") != null ){
            String email_session = (String)httpSession.getAttribute("email");
            String chucaidau = email_session.substring(0,1);
            modelMap.addAttribute("chucaidau",chucaidau);
        }else{

        }

        List<SanPham> listsp = sanPhamService.LayDanhSachSanPhamLimit(0);
        modelMap.addAttribute("listsp",listsp);
        return  "trangchu";
    }


    @RequestMapping(value = "/dangky")
    public  String ViewDangKy(){return  "signup";}

    @PostMapping("/dangky")
    public String DangKy(@RequestParam String signup_email, @RequestParam String signup_password, @RequestParam String repassword, ModelMap modelMap){
        boolean checkmail = validate(signup_email);
        if(checkmail) {
            if (signup_password.equals(repassword)) {
                NhanVien nhanVien = new NhanVien();
                nhanVien.setEmail(signup_email);
                nhanVien.setMatkhau(signup_password);

                boolean ktThem = nhanVienService.ThemNhanVien(nhanVien);
                if (ktThem) {
                    modelMap.addAttribute("kiemtradangnhap", "Tao tai khoan thanh cong");

                } else {
                }

            } else {
                modelMap.addAttribute("kiemtradangnhap", "Mat khau khong trung khop");

            }
        }
        else{
            modelMap.addAttribute("kiemtradangnhap", "Vui long nhap dung dinh dang email");

        }
        return  "signup";

    }
    public static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    public static boolean validate(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX .matcher(emailStr);
        return matcher.find();
    }
}
