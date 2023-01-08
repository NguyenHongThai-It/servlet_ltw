package Entities;

import java.io.Serializable;

public class Product implements Serializable {
    private String id;
    private String name;
    private String slug;
    private String desc;
    private int rate;
    private int amountSold;
    private int price;
    private String specification;
    private String origin;
    private String brand;
    private int priceDisc;
    private int amount;
    private String codeDisc;
    private int discExtra;
    private String contentDetailProduct;
    private int img;
    private int types;
    private int outstanding;
    private int bestSell;
    private int forOld;
    private int form;
    private String thumbnail;
    private int status;

    public Product(String id, String name, String slug, String desc, int rate, int amountSold, int price, String specification, String origin, String brand, int priceDisc, int amount, String codeDisc, int discExtra, String contentDetailProduct, int img, int types, int outstanding, int bestSell, int forOld, int form, String thumbnail, int status) {
        this.id = id;
        this.name = name;
        this.slug = slug;
        this.desc = desc;
        this.rate = rate;
        this.amountSold = amountSold;
        this.price = price;
        this.specification = specification;
        this.origin = origin;
        this.brand = brand;
        this.priceDisc = priceDisc;
        this.amount = amount;
        this.codeDisc = codeDisc;
        this.discExtra = discExtra;
        this.contentDetailProduct = contentDetailProduct;
        this.img = img;
        this.types = types;
        this.outstanding = outstanding;
        this.bestSell = bestSell;
        this.forOld = forOld;
        this.form = form;
        this.thumbnail = thumbnail;
        this.status = status;
    }

    public Product() {
    }

    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", slug='" + slug + '\'' +
                ", desc='" + desc + '\'' +
                ", rate=" + rate +
                ", amountSold=" + amountSold +
                ", price=" + price +
                ", specification='" + specification + '\'' +
                ", origin='" + origin + '\'' +
                ", brand='" + brand + '\'' +
                ", priceDisc=" + priceDisc +
                ", amount=" + amount +
                ", codeDisc='" + codeDisc + '\'' +
                ", discExtra=" + discExtra +
                ", contentDetailProduct='" + contentDetailProduct + '\'' +
                ", img=" + img +
                ", types=" + types +
                ", outstanding=" + outstanding +
                ", bestSell=" + bestSell +
                ", forOld=" + forOld +
                ", form=" + form +
                ", thumbnail='" + thumbnail + '\'' +
                ", status=" + status +
                '}';
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
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

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public int getAmountSold() {
        return amountSold;
    }

    public void setAmountSold(int amountSold) {
        this.amountSold = amountSold;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getPriceDisc() {
        return priceDisc;
    }

    public void setPriceDisc(int priceDisc) {
        this.priceDisc = priceDisc;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getCodeDisc() {
        return codeDisc;
    }

    public void setCodeDisc(String codeDisc) {
        this.codeDisc = codeDisc;
    }

    public int getDiscExtra() {
        return discExtra;
    }

    public void setDiscExtra(int discExtra) {
        this.discExtra = discExtra;
    }

    public String getContentDetailProduct() {
        return contentDetailProduct;
    }

    public void setContentDetailProduct(String contentDetailProduct) {
        this.contentDetailProduct = contentDetailProduct;
    }

    public int getImg() {
        return img;
    }

    public void setImg(int img) {
        this.img = img;
    }

    public int getTypes() {
        return types;
    }

    public void setTypes(int types) {
        this.types = types;
    }

    public int getOutstanding() {
        return outstanding;
    }

    public void setOutstanding(int outstanding) {
        this.outstanding = outstanding;
    }

    public int getBestSell() {
        return bestSell;
    }

    public void setBestSell(int bestSell) {
        this.bestSell = bestSell;
    }

    public int getForOld() {
        return forOld;
    }

    public void setForOld(int forOld) {
        this.forOld = forOld;
    }

    public int getForm() {
        return form;
    }

    public void setForm(int form) {
        this.form = form;
    }
}
