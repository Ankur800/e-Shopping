package tech.codingclub.helix.controller;

import tech.codingclub.helix.Tables;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.Customer;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class ControllerUtils {

    public static final String TOKEN_COOKIE = "t";

    public static Customer getCurrentMember(HttpServletRequest request) {
        Customer customer = new GenericDB<Customer>().getRow(tech.codingclub.helix.tables.Customer.CUSTOMER, Customer.class, tech.codingclub.helix.tables.Customer.CUSTOMER.ID.eq(ControllerUtils.getUserId(request)));
        if (customer != null) {
            customer.password = null;
        }
        return customer;
    }


    public static Long getUserId(HttpServletRequest httpServletRequest) {
        Long id = (Long) httpServletRequest.getSession().getAttribute("I");
        if (id == null) {
            Cookie[] cookies = httpServletRequest.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals(TOKEN_COOKIE)) {
                        Customer customer = new GenericDB<Customer>().getRow(tech.codingclub.helix.tables.Customer.CUSTOMER, Customer.class, tech.codingclub.helix.tables.Customer.CUSTOMER.TOKEN.eq(cookie.getValue()));
                        if (customer != null && customer.token != null) {
                            setUserSession(httpServletRequest, customer);
                            return customer.id;
                        }
                    }
                }
            }
        }
        return id;
    }

    public static Boolean isUser(HttpServletRequest httpServletRequest) {
        Boolean temp = (Boolean) httpServletRequest.getSession().getAttribute("I");

        if (temp != null && temp) return true;

        Cookie[] cookies = httpServletRequest.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(TOKEN_COOKIE)) {
                    Customer customer = new GenericDB<Customer>().getRow(tech.codingclub.helix.tables.Customer.CUSTOMER, Customer.class, tech.codingclub.helix.tables.Customer.CUSTOMER.TOKEN.eq(cookie.getValue()));
                    if (customer != null && customer.token != null) {
                        setUserSession(httpServletRequest, customer);
                        return true;
                    }
                }
            }
        }
        return null;
    }


    public static void setUserSession(HttpServletRequest httpServletRequest, Customer team) {
        httpServletRequest.getSession().setAttribute("I", team.id);
    }
}
