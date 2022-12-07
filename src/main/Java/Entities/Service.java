package Entities;

public class Service {
    private String id;
    private String content;
    private String subContent;
    private int order;
    private int img;

    public Service(String id, String content, String subContent, int order, int img) {
        this.id = id;
        this.content = content;
        this.subContent = subContent;
        this.order = order;
        this.img = img;
    }

    public Service() {
    }

    @Override
    public String toString() {
        return "Service{" +
                "id='" + id + '\'' +
                ", content='" + content + '\'' +
                ", subContent='" + subContent + '\'' +
                ", order=" + order +
                ", img=" + img +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSubContent() {
        return subContent;
    }

    public void setSubContent(String subContent) {
        this.subContent = subContent;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public int getImg() {
        return img;
    }

    public void setImg(int img) {
        this.img = img;
    }
}
