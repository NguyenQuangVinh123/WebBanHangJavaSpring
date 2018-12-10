package dao;

import daoimp.NhanVienImp;
import entity.NhanVien;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NhanVienDAO implements NhanVienImp {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public boolean KiemTraDangNhap(String email,String password){
        Session session = sessionFactory.getCurrentSession();

        try{
            NhanVien nhanVien = (NhanVien)session.createQuery("FROM NHANVIEN where email ='"+ email +"' AND matkhau ='"+ password +"' ").getSingleResult();
            if (nhanVien != null){
                System.out.println("Dang nhap thanh cong");
                return true;
            }else {
                return  false;
            }
        }catch(Exception e){
           e.printStackTrace();

        }
        return  false;

    }

    @Override
    @Transactional
    public boolean ThemNhanVien(NhanVien nhanVien) {
        Session session = sessionFactory.getCurrentSession();
        int manhanvien = (Integer)session.save(nhanVien);
        if(manhanvien > 0){
            return  true;
        }else {
            return false;

        }
    }


}
