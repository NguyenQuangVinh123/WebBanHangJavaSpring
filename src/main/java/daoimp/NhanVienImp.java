package daoimp;

import entity.NhanVien;

public interface NhanVienImp {
    boolean KiemTraDangNhap(String email, String password);
    boolean ThemNhanVien(NhanVien nhanVien);
}
