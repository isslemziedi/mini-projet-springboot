
package com.ufrcni.isslemproject.controllers;

import com.ufrcni.isslemproject.helpers.Token;
import com.ufrcni.isslemproject.models.User;
import com.ufrcni.isslemproject.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AuthentificationController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/login")
    public ModelAndView getLogin(){
        System.out.println("In Login Page Controller");
        ModelAndView getLoginPage = new ModelAndView(("login"));
        //set token string
        String token = Token.generateToken();
        //send token to view
        getLoginPage.addObject("token",token);
        getLoginPage.addObject("PageTitle","Login");
        return getLoginPage;
    }

    @PostMapping("/login")
    public String login(@RequestParam("email")String email ,
                        @RequestParam("password") String password,
                        @RequestParam ("_token")String token,
                        Model model,
                        HttpSession session){


        // TODO : Validate input fields/from data :
        // email&password
        if(email.isEmpty() || email==null || password.isEmpty() || password == null){
            model.addAttribute("error","Username or Password Cannot be Empty");
            return "login";
        }

        // TODO : Check if email exists :
        String getEmailInDatabase = userRepository.getUserEmail(email);

        //check if email exists
        if(getEmailInDatabase != null){
            String getPasswordInDatabase = userRepository.getUserPassword(getEmailInDatabase);

            // Validate Password:
            if(!BCrypt.checkpw(password, getPasswordInDatabase)){
                model.addAttribute("error", "Incorrect Username or Password");
                return "login";
            }
            // End Of Validate Password.
        }
        else{
            model.addAttribute("error","Something went wrong please contact support");
            return "error";
        }


        // TODO : Check if user account is verified :
        int verified = userRepository.isVerified(getEmailInDatabase);
        if(verified != 1){
            model.addAttribute("error", "This account is not yet verified,please check email and verify account");
            return "login";
        }


        // TODO: proceed to log the user in:
        User user = userRepository.getUserDetails(getEmailInDatabase);
        //set session
        session.setAttribute("user",user);
        session.setAttribute("token",token);
        session.setAttribute("authentication",true);

        return "redirect:/app/dashboard";

    }

    @GetMapping("/logout")
    public  String logout(HttpSession session, RedirectAttributes redirectAttributes){
        session.invalidate();
        redirectAttributes.addFlashAttribute("logged_out","logged out successfully");
        return "redirect:/login";
    }

}
