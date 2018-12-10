package entity;

import javax.persistence.*;

@Entity(name = "CHITIETSANPHAM")
public class ChiTietSanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int machitietsanpham;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "masanpham")
    SanPham sanpham;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "mamau")
    MauSanPham mausanpham;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "masize")
    SizeSanPham sizesanpham;


    int soluong;
    String ngaynhap;

    public int getMachitietsanpham() {
        return machitietsanpham;
    }

    public void setMachitietsanpham(int machitietsanpham) {
        this.machitietsanpham = machitietsanpham;
    }

    public SanPham getSanpham() {
        return sanpham;
    }

    public void setSanpham(SanPham sanpham) {
        this.sanpham = sanpham;
    }

    public MauSanPham getMausanpham() {
        return mausanpham;
    }

    public void setMausanpham(MauSanPham mausanpham) {
        this.mausanpham = mausanpham;
    }

    public SizeSanPham getSizesanpham() {
        return sizesanpham;
    }

    public void setSizesanpham(SizeSanPham sizesanpham) {
        this.sizesanpham = sizesanpham;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getNgaynhap() {
        return ngaynhap;
    }

    public void setNgaynhap(String ngaynhap) {
        this.ngaynhap = ngaynhap;
    }
}
