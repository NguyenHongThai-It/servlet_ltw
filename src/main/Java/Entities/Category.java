package Entities;

import java.io.Serializable;

public class Category implements Serializable {
    private String id;
    private String name;
    private String slug;
    private int orders;
    private String createdAt;
    private String updatedAt;
    private int isFooter;
    private int status;
    private int types;
    private String contentDetailCat;
    private int img;
    private String parentId;

    public Category(String id, String name, String slug, int orders, String createdAt, String updatedAt, int isFooter, int status, int types, String contentDetailCat, int img, String parentId) {
        this.id = id;
        this.name = name;
        this.slug = slug;
        this.orders = orders;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.isFooter = isFooter;
        this.status = status;
        this.types = types;
        this.contentDetailCat = contentDetailCat;
        this.img = img;
        this.parentId = parentId;
    }

    public Category() {
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

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public int getOrders() {
        return orders;
    }

    public void setOrders(int orders) {
        this.orders = orders;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    public int getIsFooter() {
        return isFooter;
    }

    public void setIsFooter(int isFooter) {
        this.isFooter = isFooter;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getTypes() {
        return types;
    }

    public void setTypes(int types) {
        this.types = types;
    }

    public String getcontentDetailCat() {
        return contentDetailCat;
    }

    public void setcontentDetailCat(String contentDetailCat) {
        this.contentDetailCat = contentDetailCat;
    }

    public int getImg() {
        return img;
    }

    public void setImg(int img) {
        this.img = img;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", slug='" + slug + '\'' +
                ", orders=" + orders +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                ", isFooter=" + isFooter +
                ", status=" + status +
                ", types=" + types +
                ", contentDetailCat='" + contentDetailCat + '\'' +
                ", img=" + img +
                ", parentId=" + parentId +
                '}';
    }
}
