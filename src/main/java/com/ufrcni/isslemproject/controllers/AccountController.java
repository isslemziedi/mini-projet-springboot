package com.ufrcni.isslemproject.controllers;

import com.ufrcni.isslemproject.helpers.GenerateAccNum;
import com.ufrcni.isslemproject.models.User;
import com.ufrcni.isslemproject.repository.AccountRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountRepository accountRepository;

    @PostMapping("/create_account")
    public String createAccount(@RequestParam("account_name")String accountName,
                                @RequestParam("account_type") String accountType,
                                RedirectAttributes redirectAttributes,
                                HttpSession session){

        // TODO: check for empty strings
        if(accountName.isEmpty() || accountType.isEmpty()){
            redirectAttributes.addFlashAttribute("error", "Account Name Cannot Be Empty");
            return "redirect:/app/dashboard";
        }

        // TODO: get logged in user
        User user = (User)session.getAttribute("user");

        //TODO: get/generate accounnt number
        int setAccountNumber = GenerateAccNum.generateAccountNumber();
        String ufrAccountNumber = Integer.toString(setAccountNumber);

        // TODO: create account:
        accountRepository.createUfrAccount(user.getUser_id(), ufrAccountNumber,accountName,accountType);


        redirectAttributes.addFlashAttribute("success","Account Created Successfully!");
        return "redirect:/app/dashboard";

    }
}
