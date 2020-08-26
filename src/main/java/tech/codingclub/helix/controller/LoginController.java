package tech.codingclub.helix.controller;

import org.apache.log4j.Logger;
import org.jooq.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.LoginResponse;
import tech.codingclub.helix.entity.Customer;
import tech.codingclub.helix.entity.Product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * User: rishabh
 */
@Controller
@RequestMapping("/login")
public class LoginController extends BaseController {

    private static Logger logger = Logger.getLogger(MainController.class);


    @RequestMapping(method = RequestMethod.GET, value = "/welcome")
    public String welcome(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "welcomelogin";
    }


    @RequestMapping(method = RequestMethod.POST, value = "/welcome")
    public
    @ResponseBody
    LoginResponse handleLogin(@RequestBody Customer customer, HttpServletRequest request, HttpServletResponse response) {

        Condition condition = tech.codingclub.helix.tables.Customer.CUSTOMER.EMAIL.eq(customer.email).and(tech.codingclub.helix.tables.Customer.CUSTOMER.PASSWORD.eq(customer.password));

        List<Customer> x = (List<Customer>) GenericDB.getRows(tech.codingclub.helix.tables.Customer.CUSTOMER, Customer.class, condition, 1);

        if(x != null && x.size() > 0){
            //condition met ! and user is entering right email and password

            Customer customerTemp = x.get(0);

            ControllerUtils.setUserSession(request, customerTemp);
            return new LoginResponse(customerTemp.email, true, "Login Successful");
        } else {
            //Wrong combination
            return new LoginResponse(null, false, "Wrong combination!");
        }
    }

}