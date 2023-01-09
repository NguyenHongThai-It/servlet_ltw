package Entities;


import java.io.Serializable;

public class User implements Serializable {
    private String userId;
    private String surname;
    private String name;
    private String email;
    private String phone;
    private String password;
    private String avatar;
    private String address;
    private int role;
    private int status;
    private String idGg;

    public User(String userId, String surname, String name, String email, String phone, String password, String avatar, String address, int role, int status) {
        this.userId = userId;
        this.surname = surname;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.avatar = avatar;
        this.address = address;
        this.role = role;
        this.status = status;
    }

    public User(String userId, String surname, String name, String email, String phone, String password, String avatar, String address, int role, int status, String idGg) {
        this.userId = userId;
        this.surname = surname;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.avatar = avatar;
        this.address = address;
        this.role = role;
        this.status = status;
        this.idGg = idGg;
    }

    public User() {
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", surname='" + surname + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                ", avatar='" + avatar + '\'' +
                ", address='" + address + '\'' +
                ", role=" + role +
                ", status=" + status +
                ", idGg='" + idGg + '\'' +
                '}';
    }
}
