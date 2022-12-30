package Entities;

import java.io.Serializable;

public class Slider implements Serializable {
    private String id;
    private String name;
    private String link;
    private String slug;
    private int position;
    private int order;
    private int status;
    private int createdAt;
    private int updatedAt;
    private int imgStoreId;

    public Slider(String id, String name, String link, String slug, int position, int order, int status, int createdAt, int updatedAt, int imgStoreId) {
        this.id = id;
        this.name = name;
        this.link = link;
        this.slug = slug;
        this.position = position;
        this.order = order;
        this.status = status;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.imgStoreId = imgStoreId;
    }

    public Slider() {
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

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(int createdAt) {
        this.createdAt = createdAt;
    }

    public int getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(int updatedAt) {
        this.updatedAt = updatedAt;
    }

    public int getImgStoreId() {
        return imgStoreId;
    }

    public void setImgStoreId(int imgStoreId) {
        this.imgStoreId = imgStoreId;
    }

    @Override
    public String toString() {
        return "Slider{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", link='" + link + '\'' +
                ", slug='" + slug + '\'' +
                ", position=" + position +
                ", order=" + order +
                ", status=" + status +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                ", imgStoreId=" + imgStoreId +
                '}';
    }
}
