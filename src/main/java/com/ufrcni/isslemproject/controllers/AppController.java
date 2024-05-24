package com.ufrcni.isslemproject.controllers;

import com.ufrcni.isslemproject.models.Account;
import com.ufrcni.isslemproject.models.PaymentHistory;
import com.ufrcni.isslemproject.models.TransactionHistory;
import com.ufrcni.isslemproject.models.User;
import com.ufrcni.isslemproject.repository.AccountRepository;
import com.ufrcni.isslemproject.repository.PaymentsHistoryRepository;
import com.ufrcni.isslemproject.repository.TransactionHistoryRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.util.List;

@Controller
@RequestMapping("/app")
public class AppController {

    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private PaymentsHistoryRepository paymentsHistoryRepository;
    @Autowired
    private TransactionHistoryRepository transactionHistoryRepository;
    User user;

    @GetMapping("/dashboard")
    public ModelAndView getDashboard(HttpSession session ){
        ModelAndView getDashboardPage = new ModelAndView(("dashboard"));

        //get the details pf the logged in user
        user = (User) session.getAttribute("user");

        //get the account of the logged in user
        List<Account> getUserAccounts = accountRepository.getUserAccountsById(user.getUser_id());

        //get balance
        BigDecimal totalAccountsBalance = accountRepository.getTotalBalance(user.getUser_id());


        //set objects
        getDashboardPage.addObject("userAccounts", getUserAccounts);
        getDashboardPage.addObject("totalBalance", totalAccountsBalance);


        return getDashboardPage;
    }


    @GetMapping("/payment_history")
    public ModelAndView getPaymentHistory(HttpSession session){
        ModelAndView getPaymentHistoryPage = new ModelAndView(("paymentHistory"));

        user = (User)session.getAttribute("user");

        //get payment history/records
        List<PaymentHistory>  userPaymentHistory = paymentsHistoryRepository.getPaymentRecordsById(user.getUser_id());

        getPaymentHistoryPage.addObject("payment_history",userPaymentHistory);

        return getPaymentHistoryPage;
    }




    @GetMapping("/transact_history")
    public ModelAndView getTransactHistory(HttpSession session){
        ModelAndView getTransactHistoryPage = new ModelAndView(("transactHistory"));

        user = (User)session.getAttribute("user");

        //get transaction history/records
        List<TransactionHistory>  userTransactHistory = transactionHistoryRepository.getTransactionRecordsById(user.getUser_id());

        getTransactHistoryPage.addObject("transact_history",userTransactHistory);

        return getTransactHistoryPage;
    }


    @GetMapping("/trainers")
    public ModelAndView getTrainers(HttpSession session){
        ModelAndView getTrainersPage = new ModelAndView(("trainers"));

        user=(User)session.getAttribute("user");

        getTrainersPage.addObject("trainers","Trainers");

        return getTrainersPage;
    }

    @GetMapping("/courses")
    public ModelAndView getCourses(HttpSession session){
        ModelAndView getCoursesPage = new ModelAndView(("courses"));

        user=(User)session.getAttribute("user");

        getCoursesPage.addObject("courses","Courses");

        return getCoursesPage;
    }


    @GetMapping("/chatbot")
    public ModelAndView getChatbot(HttpSession session){
        ModelAndView getCoursesPage = new ModelAndView(("chatbot"));

        user=(User)session.getAttribute("user");

        getCoursesPage.addObject("chatbot","chatbot");

        return getCoursesPage;
    }

}
