package entity;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class ChiTietHoaDonId implements Serializable {
    int mahoadon;

    public int getMahoadon() {
        return mahoadon;
    }

    public void setMahoadon(int mahoadon) {
        this.mahoadon = mahoadon;
    }

}