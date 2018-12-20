package controller;

import entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import service.SanPhamService;

import java.util.List;

@Controller
@RequestMapping("/quanlysanpham")
public class DashBoardSanPhamController {

    @Autowired
    SanPhamService sanPhamService;
    @RequestMapping
    public String Default(ModelMap modelMap){
        List<SanPham> sanPhamList = sanPhamService.LayDanhSachSanPhamLimit(0);
        List<SanPham> sanPhamListTong = sanPhamService.LayDanhSachSanPhamLimit(-1);
        modelMap.addAttribute("sanPhamList",sanPhamList);
        modelMap.addAttribute("sanPhamListTong",sanPhamListTong);

        double tongsopage = Math.ceil((double)sanPhamListTong.size()/10);
        System.out.println(tongsopage);
        modelMap.addAttribute("tongsopage",tongsopage);

        return "admin/manager_product";
    }
}
