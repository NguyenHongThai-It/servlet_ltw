package Entities;

import java.io.Serializable;

public class Admin implements Serializable {
    private String id;
    private String userId;

    public Admin(String id, String userId) {
        this.id = id;
        this.userId = userId;
    }

    public Admin() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id='" + id + '\'' +
                ", userId='" + userId + '\'' +
                '}';
    }
}
