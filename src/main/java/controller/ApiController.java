package controller;

import entity.GioHang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.*;
import service.NhanVienService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("api/")
@SessionAttributes("giohang")
public class ApiController {

    @Autowired
    NhanVienService nhanVienService;
    List<GioHang> gioHangs = new ArrayList<GioHang>();

    @GetMapping("KiemTraDangNhap")
    @ResponseBody
    public String KiemTraDangNhap(@RequestParam String email, @RequestParam String password, HttpSession httpSession){
        boolean kiemtra = nhanVienService.KiemTraDangNhap(email,password);
        httpSession.setAttribute("email",email);
        return "" + kiemtra;
    }
    @GetMapping("ThemGioHang")
    public void ThemGioHang(@ModelAttribute GioHang gioHang, HttpSession httpSession){
        httpSession.setAttribute("gioHang",gioHangs);
        List<GioHang> list = (List<GioHang>) httpSession.getAttribute("giohang");
        gioHangs.add(gioHang);

    }

}
