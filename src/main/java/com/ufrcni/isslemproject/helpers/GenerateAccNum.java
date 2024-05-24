package com.ufrcni.isslemproject.helpers;

import java.util.Random;

public class GenerateAccNum {

    public static int generateAccountNumber(){
        int accountNumber;
        Random random = new Random();
        int bound = 1000;
        accountNumber=bound * random.nextInt(bound);
        return accountNumber;

    }
}
