package Entities;

public class ContactInfor {
    private String id;
    private String hotline;
    private String zalo;
    private String timeOpen;
    private int img;
    private String codeDisc;
    private String email;

    public ContactInfor(String id, String hotline, String zalo, String timeOpen, int img, String codeDisc, String email) {
        this.id = id;
        this.hotline = hotline;
        this.zalo = zalo;
        this.timeOpen = timeOpen;
        this.img = img;
        this.codeDisc = codeDisc;
        this.email = email;
    }

    public ContactInfor() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHotline() {
        return hotline;
    }

    public void setHotline(String hotline) {
        this.hotline = hotline;
    }

    public String getZalo() {
        return zalo;
    }

    public void setZalo(String zalo) {
        this.zalo = zalo;
    }

    public String getTimeOpen() {
        return timeOpen;
    }

    public void setTimeOpen(String timeOpen) {
        this.timeOpen = timeOpen;
    }

    public int getImg() {
        return img;
    }

    public void setImg(int img) {
        this.img = img;
    }

    public String getCodeDisc() {
        return codeDisc;
    }

    public void setCodeDisc(String codeDisc) {
        this.codeDisc = codeDisc;
    }

    @Override
    public String toString() {
        return "ContactInfor{" + "id=" + id + ", hotline='" + hotline + '\'' + ", zalo='" + zalo + '\'' + ", timeOpen='" + timeOpen + '\'' + ", img=" + img + ", codeDisc='" + codeDisc + '\'' + '}';
    }
}
