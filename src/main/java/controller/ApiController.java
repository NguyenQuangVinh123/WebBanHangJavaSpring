package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import service.NhanVienService;

@Controller
@RequestMapping("api/")
@SessionAttributes("user")
public class ApiController {

    @Autowired
    NhanVienService nhanVienService;

    @GetMapping("KiemTraDangNhap")
    @ResponseBody
    public String KiemTraDangNhap(@RequestParam String email, @RequestParam String password, ModelMap modelMap){
        boolean kiemtra = nhanVienService.KiemTraDangNhap(email,password);
        modelMap.addAttribute("user",email);
        return "" + kiemtra;
    }
}
