package daoimp;

import entity.SanPham;

import java.util.List;

public interface SanPhamImp {
    List<SanPham> LayDanhSachSanPhamLimit(int spbatdau);
}
