package tech.codingclub.helix.entity;

/**
 * Created by hackme on 2/7/18.
 */
public class Customer extends CustomerBase {

    public String name;
    public String email;
    public String password;
    public String token;

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getToken() { return token; }

    public Customer() {

    }



}
