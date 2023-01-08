package Entities;

import java.io.Serializable;

public class Nav implements Serializable {
    private String id;
    private String name;
    private int img;
    private String slug;

    public Nav(String id, String name, int img, String slug) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.slug = slug;
    }

    public Nav() {
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

    public int getImg() {
        return img;
    }

    public void setImg(int img) {
        this.img = img;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    @Override
    public String toString() {
        return "Nav{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", img=" + img +
                '}';
    }
}
