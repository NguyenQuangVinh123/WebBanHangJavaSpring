package service;

import dao.HoaDonDAO;
import daoimp.HoaDonImp;
import entity.HoaDon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HoaDonService implements HoaDonImp {
    @Autowired
    HoaDonDAO hoaDonDAO;


    @Override
    public int ThemHoaDon(HoaDon hoaDon) {
        return hoaDonDAO.ThemHoaDon(hoaDon);
    }
}
