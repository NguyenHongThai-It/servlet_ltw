package Entities;

public class NewContentDetail {
    private String id;
    private String content;
    private int status;

    public NewContentDetail(String id, String content, int status) {
        this.id = id;
        this.content = content;
        this.status = status;
    }

    public NewContentDetail() {
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
        return "NewContentDetail{" +
                "id='" + id + '\'' +
                ", content='" + content + '\'' +
                ", status=" + status +
                '}';
    }
}
