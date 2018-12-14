package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.*;
import service.NhanVienService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("api/")

public class ApiController {

    @Autowired
    NhanVienService nhanVienService;

    @GetMapping("KiemTraDangNhap")
    @ResponseBody
    public String KiemTraDangNhap(@RequestParam String email, @RequestParam String password, HttpSession httpSession){
        boolean kiemtra = nhanVienService.KiemTraDangNhap(email,password);
        httpSession.setAttribute("email",email);
        return "" + kiemtra;
    }
}
