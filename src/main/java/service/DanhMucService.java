package service;

import dao.DanhMucDAO;
import daoimp.DanhMucImp;
import entity.DanhMucSanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DanhMucService implements DanhMucImp {
    @Autowired
    DanhMucDAO danhMucDAO;

    @Override
    public List<DanhMucSanPham> LayDanhMuc() {

        return  danhMucDAO.LayDanhMuc();
    }
}
