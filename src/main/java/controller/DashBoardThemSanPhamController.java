package controller;

import entity.DanhMucSanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import service.DanhMucService;

import java.util.List;

@Controller
@RequestMapping("/insert_product")
public class DashBoardThemSanPhamController {
    @Autowired
    DanhMucService danhMucService;

    @GetMapping
    public String Default(ModelMap modelMap){
        List<DanhMucSanPham> listdanhmuc = danhMucService.LayDanhMuc();
        modelMap.addAttribute("listdanhmuc",listdanhmuc);
        return "admin/insert_product";
    }
}
