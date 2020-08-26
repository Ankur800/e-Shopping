package tech.codingclub.helix.entity;

public class Cart {

    public Long user_id;
    public Long product_id;

    public Cart() {

    }

    public Cart(Long user_id, Long product_id) {
        this.user_id = user_id;
        this.product_id = product_id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public Long getProduct_id() {
        return product_id;
    }

}
