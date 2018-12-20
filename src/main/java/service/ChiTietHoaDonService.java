package service;

import dao.ChiTietHoaDonDAO;
import daoimp.ChiTietHoaDonImp;
import entity.ChiTietHoaDon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiTietHoaDonService implements ChiTietHoaDonImp {
    @Autowired
    ChiTietHoaDonDAO chiTietHoaDonDAO;

    @Override
    public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
        return chiTietHoaDonDAO.ThemChiTietHoaDon(chiTietHoaDon);
    }
}
