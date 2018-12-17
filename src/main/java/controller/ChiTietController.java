package controller;

import entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import service.SanPhamService;

import java.util.List;

@Controller
@RequestMapping("/detail")
public class ChiTietController {

    @Autowired
    SanPhamService sanPhamService;
    @GetMapping("/{masanpham}")
    public String Default(@PathVariable int masanpham , ModelMap modelmap){
        SanPham sanPham = sanPhamService.LayDanhSachChiTietSanPhamTheoMa(masanpham);
        modelmap.addAttribute("sanPham",sanPham);
        return "detail";
    }

}

