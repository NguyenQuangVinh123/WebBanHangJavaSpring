package controller;

import entity.GioHang;
import entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import service.NhanVienService;
import service.SanPhamService;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("api/")
@SessionAttributes("giohang")
public class ApiController {

    @Autowired
    NhanVienService nhanVienService;

    @Autowired
    SanPhamService sanPhamService;

    @GetMapping("KiemTraDangNhap")
    @ResponseBody
    public String KiemTraDangNhap(@RequestParam String email, @RequestParam String password, HttpSession httpSession){
        boolean kiemtra = nhanVienService.KiemTraDangNhap(email,password);
        httpSession.setAttribute("email",email);
        return "" + kiemtra;
    }
    @GetMapping("ThemGioHang")
    @ResponseBody
    public String ThemGioHang( @RequestParam String hinhsp,@RequestParam int masp,@RequestParam int soluong, @RequestParam String giatien, @RequestParam String tensp, HttpSession httpSession){

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
//            List<GioHang> listgiohangs = (List<GioHang>) httpSession.getAttribute("giohang");
            return gioHangs.size() + "";

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
            return listgiohangs.size() + "";

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

    @GetMapping("XoaGioHang")
    @ResponseBody
    public String XoaGioHang(@RequestParam int masp, HttpSession httpSession){
        if(null != httpSession.getAttribute("giohang")){
            List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
            int vitri  = KiemTraSPDaTonTaiGioHang(masp,httpSession);
            gioHangs.remove(vitri);
        }

        return  null;
    }

//    @GetMapping("LaySoLuongGioHang")
//    @ResponseBody
//    public String LaySoLuongGioHang(HttpSession httpSession){
//        if(null != httpSession.getAttribute("giohang")){
//            List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
//            return gioHangs.size()+ "";
//        }
//        return  null;
//    }

    @GetMapping(path = "LaySanPhamLimit",produces = "text/plain;charset = utf-8")
    @ResponseBody
    public  String LaySanPhamLimit(@RequestParam int spbatdau){
        String html = "";
        List<SanPham> sanPhamList = sanPhamService.LayDanhSachSanPhamLimit(spbatdau);
        for(SanPham sanPham : sanPhamList){
            html += "<tr class='data'>";
            html += "<th class='data'><div class='check-box'> <label><input class='' type='checkbox' value='"+sanPham.getMasanpham()+"' /></label></div></th>";
            html +=  "<td class='data' width='30px'>"+sanPham.getMasanpham()+"</td>";
            html +=  "<td class='data'>"+sanPham.getDanhmucsanpham().getMadanhmuc()+"</td>";
            html +=  "<td class='data'>" + sanPham.getTensanpham() +"</td>";
            html +=  "<td class='data'> " + sanPham.getGiatien() +"</td>";
            html +=  "<td class='data'><img class='image1' style='width: 95px;height: 95px' src='/resources/Images/product/"+ sanPham.getHinhsanpham()+"'/><img class='image1Large' /></td>";
            html +=  "<td class='data'>"+ sanPham.getMota()+"</td>";
            html +=  "<td class= 'data' width='90px'><center><a href=''>Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp; <a href=''>Xóa</a></center></td>";
            html += "</tr>";
        }


        return html;
    }

    @GetMapping("XoaSanPham")
    @ResponseBody
    public  String XoaSanPham(@RequestParam int masp){
        sanPhamService.XoaSanPhamTheoMaSanPham(masp);
        return "true";
    }

    @Autowired
    ServletContext context;

    @PostMapping("UploadFile")
    @ResponseBody
    public  String UploadFile(MultipartHttpServletRequest request){
        String path_save_file = context.getRealPath("/resources/Images/product");
        Iterator<String> listNames = request.getFileNames();
        MultipartFile mpf = request.getFile(listNames.next());
        File file_save = new File(path_save_file + mpf.getOriginalFilename());
        try{
            mpf.transferTo(file_save);
        }catch (IllegalStateException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }
        System.out.println(path_save_file);
        return "true";
    }
    @PostMapping("themsanpham")
    @ResponseBody
    public void themsanpham(@RequestParam String dataJson){
        System.out.println(dataJson);
    }
}
