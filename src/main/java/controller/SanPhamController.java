package controller;

import entity.DanhMucSanPham;
import entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import service.DanhMucService;
import service.SanPhamService;

import java.util.List;

@Controller
@RequestMapping("/sanpham/")
public class SanPhamController {

    @Autowired
    DanhMucService danhMucService;

    @Autowired
    SanPhamService sanPhamService;

    @RequestMapping("{id}/{tendanhmuc}")
    public String Default(ModelMap modelMap, @PathVariable int id,@PathVariable String tendanhmuc){
        List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
        List<SanPham> sanPhamList = sanPhamService.LaySanPhamTheoDanhMuc(id);
        modelMap.addAttribute("danhmuc",danhMucSanPhams);
        modelMap.addAttribute("sanPhamList",sanPhamList);
        modelMap.addAttribute("tendanhmuc",tendanhmuc);

        return "product";
    }
}
