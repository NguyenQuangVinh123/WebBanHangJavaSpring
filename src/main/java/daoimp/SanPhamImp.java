package daoimp;

        import entity.SanPham;

        import java.util.List;

public interface SanPhamImp {
    List<SanPham> LayDanhSachSanPhamLimit(int spbatdau);
    SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham);
    List<SanPham> LaySanPhamTheoDanhMuc(int madanhmuc);
    boolean XoaSanPhamTheoMaSanPham(int masp);
}
