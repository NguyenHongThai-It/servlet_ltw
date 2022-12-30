package Entities;

import java.io.Serializable;

public class New implements Serializable {
    private String id;
    private String categoryId;
    private String name;
    private String description;
    private String thumbnail;
    private String newContentDetail;

    public New(String id, String categoryId, String name, String description, String thumbnail, String newContentDetail) {
        this.id = id;
        this.categoryId = categoryId;
        this.name = name;
        this.description = description;
        this.thumbnail = thumbnail;
        this.newContentDetail = newContentDetail;
    }

    public New() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getNewContentDetail() {
        return newContentDetail;
    }

    public void setNewContentDetail(String newContentDetail) {
        this.newContentDetail = newContentDetail;
    }

    @Override
    public String toString() {
        return "New{" +
                "id='" + id + '\'' +
                ", categoryId='" + categoryId + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", thumbnail='" + thumbnail + '\'' +
                ", newContentDetail='" + newContentDetail + '\'' +
                '}';
    }
}
