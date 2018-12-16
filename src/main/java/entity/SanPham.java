package entity;

import javax.persistence.*;
import java.util.Set;
@Entity(name = "SANPHAM")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int masanpham;
    String tensanpham;
    String mota;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "madanhmuc")
    DanhMucSanPham danhmucsanpham;
    String giatien;
    String hinhsanpham;
    String unit;
    String created_at;
    String updated_at;
    @OneToMany(fetch =FetchType.EAGER  ,cascade = CascadeType.ALL)
    @JoinColumn(name = "masanpham")
    Set<ChiTietSanPham> chitietsanpham;


    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "CHITIETKHUYENMAI",
            joinColumns = {@JoinColumn(name = "masanpham",referencedColumnName = "masanpham")},
            inverseJoinColumns = {@JoinColumn(name = "makhuyenmai",referencedColumnName = "makhuyenmai")}
    )
    Set<KhuyenMai> danhsachkhuyenmai;

    public Set<KhuyenMai> getDanhsachkhuyenmai() {
        return danhsachkhuyenmai;
    }

    public void setDanhsachkhuyenmai(Set<KhuyenMai> danhsachkhuyenmai) {
        this.danhsachkhuyenmai = danhsachkhuyenmai;
    }

    public Set<ChiTietSanPham> getChitietsanpham() {
        return chitietsanpham;
    }

    public void setChitietsanpham(Set<ChiTietSanPham> chitietsanpham) {
        this.chitietsanpham = chitietsanpham;
    }

    public int getMasanpham() {
        return masanpham;
    }

    public void setMasanpham(int masanpham) {
        this.masanpham = masanpham;
    }

    public String getTensanpham() {
        return tensanpham;
    }

    public void setTensanpham(String tensanpham) {
        this.tensanpham = tensanpham;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public DanhMucSanPham getDanhmucsanpham() {
        return danhmucsanpham;
    }

    public void setDanhmucsanpham(DanhMucSanPham danhmucsanpham) {
        this.danhmucsanpham = danhmucsanpham;
    }

    public String getGiatien() {
        return giatien;
    }

    public void setGiatien(String giatien) {
        this.giatien = giatien;
    }

    public String getHinhsanpham() {
        return hinhsanpham;
    }

    public void setHinhsanpham(String hinhsanpham) {
        this.hinhsanpham = hinhsanpham;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }
}
