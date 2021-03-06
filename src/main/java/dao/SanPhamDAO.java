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

import java.util.ArrayList;
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
        List<SanPham> listSp = new ArrayList<SanPham>();
        if (spbatdau < 0){
            String query1 = "FROM SANPHAM";
             listSp = (List<SanPham>) session.createQuery(query1).getResultList();


        }else{
            String query = "FROM SANPHAM";
            listSp = (List<SanPham>) session.createQuery(query).setFirstResult(spbatdau).setMaxResults(10).getResultList();
        }


        return listSp;
    }

    @Override
    @Transactional
    public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham){
        Session session = sessionFactory.getCurrentSession();
        String query = "FROM SANPHAM sp where sp.masanpham =" + masanpham;
        SanPham sanPham = (SanPham) session.createQuery(query).getSingleResult();

        return sanPham ;
    }

    @Override
    @Transactional
    public List<SanPham> LaySanPhamTheoDanhMuc(int madanhmuc) {
        Session session = sessionFactory.getCurrentSession();
        String query = "FROM SANPHAM sp where sp.danhmucsanpham.madanhmuc =" +madanhmuc;

        List<SanPham> listSp = (List<SanPham>) session.createQuery(query).getResultList();
        return listSp;
    }

    @Override
    @Transactional
    public boolean XoaSanPhamTheoMaSanPham(int masp) {
        Session session = sessionFactory.getCurrentSession();
        SanPham sanPham = session.get(SanPham.class , masp);

        session.delete(sanPham);
        return false;
    }
}
