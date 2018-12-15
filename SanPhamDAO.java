package dao;

import daoimp.SanPhamImp;
import entity.NhanVien;
import entity.SanPham;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamDAO implements SanPhamImp {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {
        Session session = sessionFactory.getCurrentSession();
        List<SanPham> listSp = (List<SanPham>) session.createQuery("from NHANVIEN").setFirstResult(spbatdau).setMaxResults(16).getResultList();

        return listSp;
    }
}
