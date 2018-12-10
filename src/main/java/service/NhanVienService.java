package service;

import dao.NhanVienDAO;
import daoimp.NhanVienImp;
import entity.NhanVien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NhanVienService implements NhanVienImp {
    @Autowired
    NhanVienDAO nhanVienDAO;

    @Override
    public boolean KiemTraDangNhap(String email, String password) {
       boolean kiemtra =  nhanVienDAO.KiemTraDangNhap(email,password);
        return kiemtra;
    }

    @Override
    public boolean ThemNhanVien(NhanVien nhanVien) {
        boolean ktThem = nhanVienDAO.ThemNhanVien(nhanVien);
        return ktThem;
    }
}
