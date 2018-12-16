package service;

import dao.SanPhamDAO;
import daoimp.SanPhamImp;
import entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SanPhamService implements SanPhamImp {
    @Autowired
    SanPhamDAO sanPhamDAO;

    @Override
    public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {

        return sanPhamDAO.LayDanhSachSanPhamLimit(spbatdau);
    }

    @Override
    public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {

        return  sanPhamDAO.LayDanhSachChiTietSanPhamTheoMa(masanpham);
    }
}
