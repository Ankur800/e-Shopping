package tech.codingclub.helix.controller;

import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

/**
 * User: rishabh
 */
@Controller
@RequestMapping("/")
public class MainController extends BaseController {

    private static Logger logger = Logger.getLogger(MainController.class);

    @RequestMapping(method = RequestMethod.GET, value = "/signup")
    public String signup(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "signup";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/signup")
    public
    @ResponseBody
    SignupResponse signUpData(@RequestBody Customer customer, HttpServletRequest request, HttpServletResponse response) {

        Boolean user_created = false;
        String message = "";

        if(GenericDB.getCount(tech.codingclub.helix.tables.Customer.CUSTOMER, tech.codingclub.helix.tables.Customer.CUSTOMER.EMAIL.eq(customer.email)) > 0){
            message += "User already exists for this email !";
        } else {
            new GenericDB<Customer>().addRow(tech.codingclub.helix.tables.Customer.CUSTOMER, customer);
            user_created = true;
            message += "User Created !";
        }

        return (new SignupResponse(message, user_created));
    }


    @RequestMapping(method = RequestMethod.GET, value = "/welcome")
    public String welcome(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        Customer customer = ControllerUtils.getCurrentMember(request);

        //access only when he is logged in!
        modelMap.addAttribute("NAME", customer.name);

        return "welcome";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/uitest")
    public String uitest(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "uitest";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/handle")
    public
    @ResponseBody
    String handleEncrypt(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        return "ok";
    }
}