package controller;

import entity.DanhMucSanPham;
import entity.GioHang;
import entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import service.DanhMucService;
import service.SanPhamService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/sanpham/")
@SessionAttributes("giohang")
public class SanPhamController {

    @Autowired
    DanhMucService danhMucService;

    @Autowired
    SanPhamService sanPhamService;

    @RequestMapping("{id}/{tendanhmuc}")
    public String Default(ModelMap modelMap, @PathVariable int id, @PathVariable String tendanhmuc, HttpSession httpSession){
        List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
        List<SanPham> sanPhamList = sanPhamService.LaySanPhamTheoDanhMuc(id);
        modelMap.addAttribute("danhmuc",danhMucSanPhams);
        modelMap.addAttribute("sanPhamList",sanPhamList);
        modelMap.addAttribute("tendanhmuc",tendanhmuc);
        List<DanhMucSanPham> listdanhmuc = danhMucService.LayDanhMuc();

        modelMap.addAttribute("listdanhmuc",listdanhmuc);
        if(null != httpSession.getAttribute("giohang")){
            List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
            modelMap.addAttribute("soluongsanphamgiohang",gioHangs.size());
        }

        return "product";
    }
}
