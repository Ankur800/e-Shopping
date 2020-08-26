package tech.codingclub.helix.controller;

import org.apache.log4j.Logger;
import org.jooq.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.Cart;
import tech.codingclub.helix.entity.Customer;
import tech.codingclub.helix.entity.Product;
import tech.codingclub.helix.entity.SignupResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * User: rishabh
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    private static Logger logger = Logger.getLogger(UserController.class);

    @RequestMapping(method = RequestMethod.GET, value = "/products")
    public String products(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        Customer member = ControllerUtils.getCurrentMember(request);

        //access only when he is logged in!

        //for recommendation
        List<Product> productList = (List<Product>) GenericDB.getRows(tech.codingclub.helix.tables.Product.PRODUCT, Product.class, null, 6);


        modelMap.addAttribute("PRODUCTS", productList);

        return "products";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/mycart")
    public String followed(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        Long currentMemberId = ControllerUtils.getUserId(request);

        //access only when he is logged in!

        Condition condition = tech.codingclub.helix.tables.Cart.CART.USER_ID.eq(currentMemberId);
        List<Long> productsInCartID = new GenericDB<Long>().getColumnRows(tech.codingclub.helix.tables.Cart.CART.PRODUCT_ID, tech.codingclub.helix.tables.Cart.CART, Long.class, condition, null);

        Condition selectProductCondition = tech.codingclub.helix.tables.Product.PRODUCT.ID.in(productsInCartID);
        List<Product> inCartProducts = (List<Product>) GenericDB.getRows(tech.codingclub.helix.tables.Product.PRODUCT, Product.class, selectProductCondition, 10);


        modelMap.addAttribute("PRODUCTS", inCartProducts);

        return "mycart";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/add-to-cart")
    public
    @ResponseBody
    String addToCart(@RequestBody Long productId, HttpServletRequest request, HttpServletResponse response) {

        //customer ID
        Long currentUserId = ControllerUtils.getUserId(request);

        Cart cart = new Cart(currentUserId, productId);
        new GenericDB<Cart>().addRow(tech.codingclub.helix.tables.Cart.CART, cart);

        return "Added Successfully !";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/remove-from-cart")
    public
    @ResponseBody
    String removeFromCart(@RequestBody Long productId, HttpServletRequest request, HttpServletResponse response) {

        //customer ID
        Long currentUserId = ControllerUtils.getUserId(request);


        Condition condition = tech.codingclub.helix.tables.Cart.CART.USER_ID.eq(currentUserId).and(tech.codingclub.helix.tables.Cart.CART.PRODUCT_ID.eq(productId));
        boolean isRemoved = new GenericDB<Cart>().deleteRow(tech.codingclub.helix.tables.Cart.CART, condition);

        if(isRemoved)
            return "Added Successfully !";

        return "Unable to remove item !";
    }

}