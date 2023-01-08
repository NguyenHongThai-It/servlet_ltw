package Entities;

import java.io.Serializable;

public class SystemProduct implements Serializable {
    private String id;
    private String name;
    private String location;
    private String hotline;
    private String zalo;
    private String coordinate;
    private String img;
    private String imgMap;

    public SystemProduct(String id, String name, String location, String hotline, String zalo, String coordinate, String img, String imgMap) {
        this.id = id;
        this.name = name;
        this.location = location;
        this.hotline = hotline;
        this.zalo = zalo;
        this.coordinate = coordinate;
        this.img = img;
        this.imgMap = imgMap;
    }

    public SystemProduct() {
    }

    @Override
    public String toString() {
        return "SystemProduct{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", location='" + location + '\'' +
                ", hotline='" + hotline + '\'' +
                ", zalo='" + zalo + '\'' +
                ", coordinate='" + coordinate + '\'' +
                ", img='" + img + '\'' +
                ", imgMap='" + imgMap + '\'' +
                '}';
    }

    public String getImgMap() {
        return imgMap;
    }

    public void setImgMap(String imgMap) {
        this.imgMap = imgMap;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setZalo(String zalo) {
        this.zalo = zalo;
    }

    public String getCoordinate() {
        return coordinate;
    }

    public void setCoordinate(String coordinate) {
        this.coordinate = coordinate;
    }
}
