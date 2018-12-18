package controller;

import entity.DanhMucSanPham;
import entity.GioHang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import service.DanhMucService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/giohang")
@SessionAttributes("giohang")
public class GioHangController {
    @Autowired
    DanhMucService danhMucService;

    @RequestMapping
    public String Default(HttpSession httpSession, ModelMap modelMap){
        if(null != httpSession.getAttribute("giohang")){
            List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
            List<DanhMucSanPham> listdanhmuc = danhMucService.LayDanhMuc();
            modelMap.addAttribute("soluongsanphamgiohang",gioHangs.size());
            modelMap.addAttribute("giohangs",gioHangs);
            modelMap.addAttribute("listdanhmuc",listdanhmuc);

        }
        return "checkout";
    }
}
