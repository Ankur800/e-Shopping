package tech.codingclub.helix.entity;

public class Product {

    public Long id;
    public String product_name;
    public Long price;
    public String image_link;


    public Product() {

    }

    public Product(Long id, String product_name, Long price, String image_link) {
        this.id = id;
        this.product_name = product_name;
        this.price = price;
        this.image_link = image_link;
    }

    public Long getId() {
        return id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public Long getPrice() {
        return price;
    }

    public String getImage_link() {
        return image_link;
    }

}
