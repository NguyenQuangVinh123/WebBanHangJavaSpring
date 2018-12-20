package controller;

import entity.DanhMucSanPham;
import entity.GioHang;
import entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import service.DanhMucService;
import service.SanPhamService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/detail")
@SessionAttributes("giohang")

public class ChiTietController {

    @Autowired
    SanPhamService sanPhamService;

    @Autowired
    DanhMucService danhMucService;


    @GetMapping("/{masanpham}")
    public String Default(@PathVariable int masanpham , ModelMap modelMap, HttpSession httpSession){
        SanPham sanPham = sanPhamService.LayDanhSachChiTietSanPhamTheoMa(masanpham);
        modelMap.addAttribute("sanPham",sanPham);
        if(null != httpSession.getAttribute("giohang")){
            List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
            List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
            modelMap.addAttribute("soluongsanphamgiohang",gioHangs.size());
            modelMap.addAttribute("danhmuc",danhMucSanPhams);
        }
        return "detail";

    }


}

