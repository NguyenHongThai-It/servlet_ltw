package Entities;

import java.io.Serializable;

public class Review implements Serializable {
    private String id;
    private String productId;
    private String createdBy;
    private int rate;
    private String message;
    private String createdAt;

    public Review(String id, String productId, String createdBy, int rate, String message, String createdAt) {
        this.id = id;
        this.productId = productId;
        this.createdBy = createdBy;
        this.rate = rate;
        this.message = message;
        this.createdAt = createdAt;
    }

    public Review() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "Review{" +
                "id='" + id + '\'' +
                ", productId='" + productId + '\'' +
                ", createdBy='" + createdBy + '\'' +
                ", rate=" + rate +
                ", message='" + message + '\'' +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }
}
