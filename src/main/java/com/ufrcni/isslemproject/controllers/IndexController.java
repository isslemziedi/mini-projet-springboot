package com.ufrcni.isslemproject.controllers;

import com.ufrcni.isslemproject.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/")
    public ModelAndView getIndex(){
        ModelAndView getIndexPage = new ModelAndView(("index"));
        getIndexPage.addObject("PageTitle","Home");
        System.out.println("In Index Page Controller");
        return getIndexPage;
    }


    @GetMapping("/error")
    public ModelAndView getError(){
        ModelAndView getErrorPage = new ModelAndView(("error"));
        System.out.println("In Error Page Controller");
        getErrorPage.addObject("PageTitle","Error");
        return getErrorPage;
    }


    @GetMapping("/verify")
    public ModelAndView getVerify(@RequestParam("token")String token , @RequestParam("code") String code){
        //set view
        ModelAndView getVerifyPage;
        // Get Token In Database:
        String dbToken = userRepository.checkToken(token);
        // Check If Token Is Valid:
        if(dbToken == null){
            getVerifyPage=new ModelAndView(("error"));
            getVerifyPage.addObject("error", "This Session Has Expired");
            return  getVerifyPage;
        }
        // End Of Check If Token Is Valid.

        // Update and Verify Account:
        userRepository.verifyAccount(token, code);

        getVerifyPage = new ModelAndView("login");

        getVerifyPage.addObject("success", "Account Verified Successfully,Please proceed to LogIn!");

        System.out.println("In Verify Account Controller");
        return getVerifyPage;

    // End Of User Account Verification.
}

    @GetMapping("/dashboard")
    public ModelAndView getDashboard(){
        ModelAndView getDashboardPage = new ModelAndView(("dashboard"));
        System.out.println("In Dashboard Page Controller");
        getDashboardPage.addObject("PageTitle","Dashboard");
        return getDashboardPage;
    }

}
