package controller;

import entity.GioHang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.*;
import service.NhanVienService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("api/")
@SessionAttributes("giohang")
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
    @GetMapping("ThemGioHang")
    @ResponseBody
    public void ThemGioHang( @RequestParam String hinhsp,@RequestParam int masp,@RequestParam int soluong, @RequestParam String giatien, @RequestParam String tensp, HttpSession httpSession){

        if(null == httpSession.getAttribute("giohang")){
            List<GioHang> gioHangs = new ArrayList<GioHang>();
            GioHang gioHang = new GioHang();
            gioHang.setMasp(masp);
            gioHang.setGiatien(giatien);
            gioHang.setTensp(tensp);
            gioHang.setHinhsp(hinhsp);
            gioHang.setSoluong(1);
            gioHangs.add(gioHang);
            httpSession.setAttribute("giohang",gioHangs);
            List<GioHang> listgiohangs = (List<GioHang>) httpSession.getAttribute("giohang");

            System.out.println(listgiohangs.size());

        }else{
            List<GioHang> listgiohangs = (List<GioHang>) httpSession.getAttribute("giohang");

            int vitri = KiemTraSPDaTonTaiGioHang(masp,httpSession);
            if (vitri == -1){
                GioHang gioHang = new GioHang();
                gioHang.setMasp(masp);
                gioHang.setGiatien(giatien);
                gioHang.setHinhsp(hinhsp);
                gioHang.setTensp(tensp);
                gioHang.setSoluong(1);
                listgiohangs.add(gioHang);
            }else{
                int soluongmoi = listgiohangs.get(vitri).getSoluong() + 1;
                listgiohangs.get(vitri).setSoluong(soluongmoi);
            }
        }
        List<GioHang> listgiohang = (List<GioHang>) httpSession.getAttribute("giohang");
        for (GioHang gioHang : listgiohang){
            System.out.println(gioHang.getMasp()+ "-" + gioHang.getTensp()+ "-" + gioHang.getSoluong()+ "-" + gioHang.getGiatien());
        }

    }
    private int KiemTraSPDaTonTaiGioHang(int masp,HttpSession httpSession){
        if (httpSession.getAttribute("giohang") != null){
            List<GioHang> listgiohang = (List<GioHang>) httpSession.getAttribute("giohang");
            for(int i=0;i<listgiohang.size();i++){
                if(listgiohang.get(i).getMasp() == masp){
                    return i;
                }
            }
        }

        return -1;
    }

    @GetMapping("LaySoLuongGioHang")
    @ResponseBody
    public String LaySoLuongGioHang(HttpSession httpSession){
        if(null != httpSession.getAttribute("giohang")){
            List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
            return gioHangs.size()+ "";
        }
        return  null;
    }

}
