package entity;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "HOADON")
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int mahoadon;
    String tenkhachahng;
    String sodt;
    String diachigiaohang;
    boolean tinhtrang;
    String ngaylap;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "mahoadon")
    Set<ChiTietHoaDon> danhsachchitiethoadon;

    public int getMahoadon() {
        return mahoadon;
    }

    public void setMahoadon(int mahoadon) {
        this.mahoadon = mahoadon;
    }

    public String getTenkhachahng() {
        return tenkhachahng;
    }

    public void setTenkhachahng(String tenkhachahng) {
        this.tenkhachahng = tenkhachahng;
    }

    public String getSodt() {
        return sodt;
    }

    public void setSodt(String sodt) {
        this.sodt = sodt;
    }

    public String getDiachigiaohang() {
        return diachigiaohang;
    }

    public void setDiachigiaohang(String diachigiaohang) {
        this.diachigiaohang = diachigiaohang;
    }

    public boolean isTinhtrang() {
        return tinhtrang;
    }

    public void setTinhtrang(boolean tinhtrang) {
        this.tinhtrang = tinhtrang;
    }

    public String getNgaylap() {
        return ngaylap;
    }

    public void setNgaylap(String ngaylap) {
        this.ngaylap = ngaylap;
    }

    public Set<ChiTietHoaDon> getDanhsachchitiethoadon() {
        return danhsachchitiethoadon;
    }

    public void setDanhsachchitiethoadon(Set<ChiTietHoaDon> danhsachchitiethoadon) {
        this.danhsachchitiethoadon = danhsachchitiethoadon;
    }
}








