package dao;

import daoimp.SanPhamImp;
import entity.SanPham;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamDAO implements SanPhamImp {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<SanPham> LayDanhSachSanPhamLimit(int sbatdau) {
        return null;
    }
}
