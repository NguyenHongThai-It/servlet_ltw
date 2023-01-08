package Entities;

import java.io.Serializable;

public class ImgStore implements Serializable {
    private String id;
    private String link;
    private String slug;
    private String img;
    private int position;
    private int orders;
    private String imgMap;
    private int status;
    private String productId;
    private String content;

    public ImgStore(String id, String link, String slug, String img, int position, int orders, String imgMap, int status, String productId, String content) {
        this.id = id;
        this.link = link;
        this.slug = slug;
        this.img = img;
        this.position = position;
        this.orders = orders;
        this.imgMap = imgMap;
        this.status = status;
        this.productId = productId;
        this.content = content;
    }

    public ImgStore() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public int getOrders() {
        return orders;
    }

    public void setOrders(int orders) {
        this.orders = orders;
    }

    public String getImgMap() {
        return imgMap;
    }

    public void setImgMap(String imgMap) {
        this.imgMap = imgMap;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "ImgStore{" +
                "id='" + id + '\'' +
                ", link='" + link + '\'' +
                ", slug='" + slug + '\'' +
                ", img='" + img + '\'' +
                ", position=" + position +
                ", orders=" + orders +
                ", imgMap='" + imgMap + '\'' +
                ", status=" + status +
                ", productId='" + productId + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
