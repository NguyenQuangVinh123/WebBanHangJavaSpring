package controller;

import entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.ChiTietHoaDonService;
import service.DanhMucService;
import service.HoaDonService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/giohang")
@SessionAttributes("giohang")
public class GioHangController {
    @Autowired
    DanhMucService danhMucService;

    @Autowired
    HoaDonService hoaDonService;

    @Autowired
    ChiTietHoaDonService chiTietHoaDonService;
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

    @PostMapping
    public String ThemHoaDon( HttpSession httpSession, @RequestParam String tenkhachhang, @RequestParam String sodt, @RequestParam String diachigiaohang, @RequestParam String hinhthucgiaohang, @RequestParam String ghichu){
        if(null != httpSession.getAttribute("giohang")){
            List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
            HoaDon hoaDon = new HoaDon();
            hoaDon.setTenkhachhang(tenkhachhang);
            hoaDon.setSodt(sodt);
            hoaDon.setDiachigiaohang(diachigiaohang);
            hoaDon.setHinhthucgiaohang(hinhthucgiaohang);
            hoaDon.setGhichu(ghichu);
            int idHoaDon = hoaDonService.ThemHoaDon(hoaDon);
            if(idHoaDon >0 ){
                Set<ChiTietHoaDon> listChitietHoaDon = new HashSet<ChiTietHoaDon>();
                for(GioHang gioHang : gioHangs){

                    ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
                    ChiTietHoaDon chiTietHoaDon = new ChiTietHoaDon();

                    chiTietHoaDonId.setMahoadon(hoaDon.getMahoadon());


                    chiTietHoaDon.setChiTietHoaDonId(chiTietHoaDonId);
                    chiTietHoaDon.setGiatien(gioHang.getGiatien());
                    chiTietHoaDon.setSoluong(gioHang.getSoluong());

                    chiTietHoaDonService.ThemChiTietHoaDon(chiTietHoaDon);
                }
            }else {
                System.out.println("Them that bai");
            };
        }
        return "success";
    }
}
