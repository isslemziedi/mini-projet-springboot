package com.ufrcni.isslemproject.controllers;

import com.ufrcni.isslemproject.models.User;
import com.ufrcni.isslemproject.repository.AccountRepository;
import com.ufrcni.isslemproject.repository.PaymentRepository;
import com.ufrcni.isslemproject.repository.TransactRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDateTime;

@Controller
@RequestMapping("/transact")
public class TransactController {

    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private PaymentRepository paymentRepository;

    @Autowired
    private TransactRepository transactRepository;

    User user;
    double currentBalance;
    double new_balance;

    LocalDateTime currentDateTime=LocalDateTime.now();

    //start enrollment

    @PostMapping("/enrollment")
    public String enrollment(@RequestParam("enrollment-amount")String enrollmentAmount,
                             @RequestParam("account_id")String accountId,
                             HttpSession session,
                             RedirectAttributes redirectAttributes){
        //TODO: check for empty strings
        if(enrollmentAmount.isEmpty() || accountId.isEmpty()){
            redirectAttributes.addFlashAttribute("error","Enrollment Amount or Account Enrolling Cannot be Empty");
            return "redirect:/app/dashboard";
        }

        //TODO: convert variables
        int acc_id = Integer.parseInt(accountId);
        double enrollmentAmountValue = Double.parseDouble(enrollmentAmount);

        //TODO : check if deposit amount is zero
        if (enrollmentAmountValue==0 || enrollmentAmountValue<0){
            redirectAttributes.addFlashAttribute("error","Enrollment Amount Cannot be of negative or 0 Value");
            return "redirect:/app/dashboard";
        }


        //TODO: get logged in user
        user = (User) session.getAttribute("user");

        //TODO: get current account balance
        currentBalance = accountRepository.getAccountBalance(user.getUser_id(),acc_id);



        //TODO : update balance
        new_balance= currentBalance+enrollmentAmountValue;
        accountRepository.ChangeAccountBalanceById(new_balance,acc_id);

        //log successful transaction
        transactRepository.logTransaction(acc_id,"enrollment",enrollmentAmountValue,"online","success","Enrollment Transaction Successful",currentDateTime);


        redirectAttributes.addFlashAttribute("success","Amount Enrolled Successfully");
        return "redirect:/app/dashboard";
    }

    //end enrollment


    //start transfer
    @PostMapping("/transfer")
    public String transfer(@RequestParam("transfer_from")String transfer_from,
                           @RequestParam("transfer_to") String transfer_to,
                           @RequestParam("transfer_amount")String transfer_amount,
                           HttpSession session,
                           RedirectAttributes redirectAttributes){

        //TODO : check for empty fields
        if(transfer_from.isEmpty() || transfer_to.isEmpty() || transfer_amount.isEmpty()){
            redirectAttributes.addFlashAttribute("error","The Account Transferring From ,and, To ,along with, The Amount Cannot be Empty");
            return "redirect:/app/dashboard";
        }

        //TODO: convert variables
        int transferFromId = Integer.parseInt(transfer_from);
        int transferToId = Integer.parseInt(transfer_to);
        double transferAmount = Double.parseDouble(transfer_amount);

        //TODO: check if transfering into the same account
        if(transferFromId == transferToId){
            redirectAttributes.addFlashAttribute("error","Cannot Transfer To The Same Account,Please Select The Appropriate Account To Perform Transfer");
            return "redirect:/app/dashboard";
        }
        //TODO: check for 0 values
        if(transferAmount == 0 || transferAmount<0 ){
            redirectAttributes.addFlashAttribute("error","Cannot Transfer negative or 0 Value Amount");
            return "redirect:/app/dashboard";
        }

        //TODO: get logged in user
        user = (User) session.getAttribute("user");

        //TODO: get current account balance
        //transfer from current balance
        double currentBalanceFrom = accountRepository.getAccountBalance(user.getUser_id(),transferFromId);

        //TODO: check if withdraw amount is more than current balance
        if (currentBalanceFrom < transferAmount){
            //log failed transaction
            transactRepository.logTransaction(transferFromId,"transfer",transferAmount,"online","failed","Insufficient Funds To",currentDateTime);

            redirectAttributes.addFlashAttribute("error","You Have Insufficient Funds To Perform this Transfer");
            return "redirect:/app/dashboard";
        }

        //transfer to current balance
        double currentBalanceTo = accountRepository.getAccountBalance(user.getUser_id(),transferToId);
        //TODO: set new balance
        //transfer_from balance
        double transferringFromNewBalance= currentBalanceFrom - transferAmount;
        //transfer_to balance
        double transferringToNewBalance = currentBalanceTo + transferAmount;
        //change balance of the account transferring from
        accountRepository.ChangeAccountBalanceById(transferringFromNewBalance , transferFromId);
        //change balance of the account transferring to
        accountRepository.ChangeAccountBalanceById(transferringToNewBalance,transferToId);


        //log successful transaction
        transactRepository.logTransaction(transferFromId,"transfer",transferAmount,"online","success","Transfer Transaction Successful",currentDateTime);

        redirectAttributes.addFlashAttribute("success","Amount Transferred Successfully");
        return "redirect:/app/dashboard";

    }

    //end transfer

    //start withdraw

    @PostMapping("/withdraw")
    public String withdraw(@RequestParam("withdraw-amount")String withdrawAmount,
                           @RequestParam("account_id")String accountId,
                           HttpSession session,
                           RedirectAttributes redirectAttributes){

        //TODO: check for empty fiels:
        if(withdrawAmount.isEmpty() || accountId.isEmpty()){
            redirectAttributes.addFlashAttribute("error","The Account Withdrawing From ,and, The Amount Cannot be Empty");
            return "redirect:/app/dashboard";
        }

        //TODO: convert variables
        double withdraw_amount = Double.parseDouble(withdrawAmount);
        int account_id = Integer.parseInt(accountId);
        //TODO: check for 0 values
        if (withdraw_amount <=0 ){
            redirectAttributes.addFlashAttribute("error","Cannot Withdraw negative or 0 Value Amount");
            return "redirect:/app/dashboard";
        }

        //TODO : get logged in User
        user=(User)session.getAttribute("user");
        //TODO: get current balance
        currentBalance = accountRepository.getAccountBalance(user.getUser_id(),account_id);


        //TODO: check if withdraw amount is more than current balance
        if (currentBalance < withdraw_amount){
            //log failed transaction
            transactRepository.logTransaction(account_id,"withdraw",withdraw_amount,"online","failed","Insufficient Funds",currentDateTime);

            redirectAttributes.addFlashAttribute("error","You Have Insufficient Funds To Perform this withdraw");
            return "redirect:/app/dashboard";
        }
        //TODO: set new balance
        new_balance=currentBalance - withdraw_amount;
        //TODO: update account balance :
        accountRepository.ChangeAccountBalanceById(new_balance,account_id);

        //log successful transaction
        transactRepository.logTransaction(account_id,"withdraw",withdraw_amount,"online","success","Withdraw Transaction Successful",currentDateTime);

        redirectAttributes.addFlashAttribute("success","Amount Withdrawed Successfully");
        return "redirect:/app/dashboard";
    }

    //end withdraw

    //start UserToUserTransfer (payment)
    @PostMapping("/UserToUserFundTransfer")
    public String UserToUserFundTransfer(@RequestParam("beneficiary")String beneficiary,
                                         @RequestParam("account_number")String account_number,
                                         @RequestParam("account_id") String account_id,
                                         @RequestParam("reference") String reference,
                                         @RequestParam("payment_amount") String payment_amount,
                                         HttpSession session,
                                         RedirectAttributes redirectAttributes){
        //TODO: check for empty fiels
        if(beneficiary.isEmpty() || account_number.isEmpty() || account_id.isEmpty() || payment_amount.isEmpty()){
            redirectAttributes.addFlashAttribute("error","Beneficiary,Account Number,Transferring Account and Transfer Amount Cannot be Empty!");
            return "redirect:/app/dashboard";
        }

        //TODO: convert variables
        int accountId=Integer.parseInt(account_id);
        double paymentAmount= Integer.parseInt(payment_amount);

        //TODO: check for 0 variables
        if (paymentAmount <0){
            redirectAttributes.addFlashAttribute("error","Cannot Transfer negative or 0 Value Amount");
            return "redirect:/app/dashboard";
        }

        //TODO: get logged in user
        user=(User)session.getAttribute("user");

        //TODO: get current balance
        currentBalance=accountRepository.getAccountBalance(user.getUser_id(),accountId);

        //TODO: check if payment amount is more than current balance
        if (currentBalance < paymentAmount){
            //log failed payment
            String reasonCode = "User To User Transfer Processed Failed! Insufficient Funds!";
            paymentRepository.makePayment(accountId,beneficiary,account_number,reference,paymentAmount,"failed",reasonCode,currentDateTime);

            //log failed transaction
            transactRepository.logTransaction(accountId,"User To User Transfer",paymentAmount,"online","failed","Insufficient Funds",currentDateTime);

            redirectAttributes.addFlashAttribute("error","You Have Insufficient Funds To Perform this transfer");
            return "redirect:/app/dashboard";
        }
        //TODO: set new balance for account paying from
        new_balance=currentBalance-paymentAmount;

        //TODO: make payment
        String reasonCode = "User To User Transfer Processed Successfully!";
        paymentRepository.makePayment(accountId,beneficiary,account_number,reference,paymentAmount,"success",reasonCode,currentDateTime);

        //TODO: update account paying from
        accountRepository.ChangeAccountBalanceById(new_balance,accountId);

        //log successful transaction
        transactRepository.logTransaction(accountId,"User To User Transfer",paymentAmount,"online","success","User To User Transfer Transaction Successful",currentDateTime);


        redirectAttributes.addFlashAttribute("success",reasonCode);
        return "redirect:/app/dashboard";


    }


}
