package Entities;

public class OrderSuccess {
    private String id;
    private String productId;
    private int num;
    private String codeDisc;
    private String userId;
    private int status;

    public OrderSuccess(String id, String productId, int num, String codeDisc, String userId, int status) {
        this.id = id;
        this.productId = productId;
        this.num = num;
        this.codeDisc = codeDisc;
        this.userId = userId;
        this.status = status;
    }

    public OrderSuccess() {
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

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getCodeDisc() {
        return codeDisc;
    }

    public void setCodeDisc(String codeDisc) {
        this.codeDisc = codeDisc;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "OrderSuccess{" +
                "id='" + id + '\'' +
                ", productId='" + productId + '\'' +
                ", num=" + num +
                ", codeDisc='" + codeDisc + '\'' +
                ", userId='" + userId + '\'' +
                ", status=" + status +
                '}';
    }
}
