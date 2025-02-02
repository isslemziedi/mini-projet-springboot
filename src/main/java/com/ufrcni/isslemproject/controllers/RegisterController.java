package com.ufrcni.isslemproject.controllers;

import com.ufrcni.isslemproject.helpers.HTML;
import com.ufrcni.isslemproject.helpers.Token;
import com.ufrcni.isslemproject.mailMessenger.MailMessenger;
import com.ufrcni.isslemproject.models.User;
import com.ufrcni.isslemproject.repository.UserRepository;
import jakarta.mail.MessagingException;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Random;

@Controller
public class RegisterController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/register")
    public ModelAndView getRegister(){
        ModelAndView getRegisterPage = new ModelAndView(("register"));
        System.out.println("In Register Page Controller");
        getRegisterPage.addObject("PageTitle","Register");
        return getRegisterPage;
    }

    @PostMapping("/register")
    public ModelAndView register(@Valid @ModelAttribute("registerUser")User user, BindingResult result,
                                 @RequestParam ("first_name") String first_name,
                                 @RequestParam ("last_name") String last_name,
                                 @RequestParam ("email") String email,
                                 @RequestParam ("password") String password,
                                 @RequestParam ("confirm_password") String confirm_password) throws MessagingException {

        ModelAndView registrationPage = new ModelAndView("register");

        //check for errors
        if(result.hasErrors() && confirm_password.isEmpty()){
            registrationPage.addObject("confirm_pass","The confirm field is required");
            return registrationPage;
        }

        // TODO: CHECK FOR PASSWORD MATCH:
        if(!password.equals(confirm_password)){
            registrationPage.addObject("passwordMismatch","passwords do not match");
            return registrationPage;
        }

        // TODO: GET TOKEN STRING:
        String token = Token.generateToken();

        // TODO: GENERATE RANDOM CODE:
        Random rand = new Random();
        int bound = 123;
        int code = bound * rand.nextInt(bound);

        // TODO: GET EMAIL HTML BODY:
        String emailBody = HTML.htmlEmailTemplate(token, Integer.toString(code));

        // TODO: HASH PASSWORD:
        String hashed_password = BCrypt.hashpw(password,BCrypt.gensalt());

        // TODO: REGISTER USER:
        userRepository.registerUser(first_name,last_name,email,hashed_password,token,code);

        // TODO: SEND EMAIL NOTIFICATION:
        MailMessenger.htmlEmailMessenger("no-reply@cniufr.com",email,"Verify Account",emailBody);


        // CHECK FOR EMAIL DOMAIN
        if (!user.getEmail().endsWith("@cniufr.com")) {
            registrationPage.addObject("wrongemail", "Invalid email domain. Please use @cniufr.com");
            System.out.println("Error attribute set");
            return registrationPage;
        }

        // TODO: RETURN TO REGISTER PAGE:
        String successMessage = "Account Registered Successfully , Please Check your email and Verify Account";
        registrationPage.addObject("success",successMessage);
        return registrationPage;
    }

}
