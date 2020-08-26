package tech.codingclub.helix.productHandler;

import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.Product;

import java.util.ArrayList;

public class ProductToDatabase {

    public static void main(String[] args) {
        ArrayList<Product> products = new ArrayList<Product>();
        products.add(new Product(null, "Green T-Shirt", (long) 300, "https://5.imimg.com/data5/JD/ID/MY-18014948/dry-fit-fabric-500x500.jpg"));
        products.add(new Product(null, "Yellow T-Shirt", (long) 330, "https://5.imimg.com/data5/FW/GT/MY-23375112/men-s-yellow-color-t-shirt-500x500.jpg"));
        products.add(new Product(null, "Pink T-Shirt", (long) 350, "https://5.imimg.com/data5/OA/TO/MY-9651283/pink-t-shirt-500x500.jpg"));
        products.add(new Product(null, "Green Shirt", (long) 730, "https://images-na.ssl-images-amazon.com/images/I/71zlRXizASL._UX679_.jpg"));
        products.add(new Product(null, "Black Shirt", (long) 840, "https://rukminim1.flixcart.com/image/880/1056/shirt/k/2/u/aks1001-akaas-l-original-imaefx936fe2ubsc.jpeg?q=50"));
        products.add(new Product(null, "Pink Shirt", (long) 999, "https://www.lordsindia.com/image/cache/1/SHIRT/COU-56-500x500.jpg"));

        for(Product product : products){
            new GenericDB<Product>().addRow(tech.codingclub.helix.tables.Product.PRODUCT, product);
        }
    }

}
