package Entities;

public class ContentDetailCat {
    private String id;
    private String content;
    private int status;

    public ContentDetailCat(String id, String content, int status) {
        this.id = id;
        this.content = content;
        this.status = status;
    }

    public ContentDetailCat() {
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "ContentDetailCat{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", status=" + status +
                '}';
    }
}
