package entity;

import javax.persistence.*;

@Entity(name = "CHITIETHOADON")
public class ChiTietHoaDon {
    @EmbeddedId
    ChiTietHoaDonId chiTietHoaDonId;
    int soluong;
    int giatien;

}
