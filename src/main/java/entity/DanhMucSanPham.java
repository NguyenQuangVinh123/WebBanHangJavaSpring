package entity;

import javax.persistence.*;
import java.util.Set;
@Entity(name = "DANHMUCSANPHAM")
public class DanhMucSanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int madanhmuc;
    String tendanhmuc;
    String hinhdanhmuc;
    String description;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "madanhmuc")
    Set<SanPham> danhsachsanpham;

    public Set<SanPham> getDanhsachsanpham() {
        return danhsachsanpham;
    }

    public void setDanhsachsanpham(Set<SanPham> danhsachsanpham) {
        this.danhsachsanpham = danhsachsanpham;
    }

    public int getMadanhmuc() {
        return madanhmuc;
    }

    public void setMadanhmuc(int madanhmuc) {
        this.madanhmuc = madanhmuc;
    }

    public String getTendanhmuc() {
        return tendanhmuc;
    }

    public void setTendanhmuc(String tendanhmuc) {
        this.tendanhmuc = tendanhmuc;
    }

    public String getHinhdanhmuc() {
        return hinhdanhmuc;
    }

    public void setHinhdanhmuc(String hinhdanhmuc) {
        this.hinhdanhmuc = hinhdanhmuc;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
