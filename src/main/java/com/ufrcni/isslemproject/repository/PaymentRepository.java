package com.ufrcni.isslemproject.repository;

import com.ufrcni.isslemproject.models.Payment;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;

@Repository
public interface PaymentRepository extends CrudRepository<Payment,Integer> {

    @Modifying
    @Query(value = "INSERT INTO payments(account_id,beneficiary_name,beneficiary_acc_number,reference_no,amount,status,reason_code,created_at)" +
            "VALUES(:account_id,:beneficiary_name,:beneficiary_acc_number,:reference_no,:amount,:status,:reason_code,:created_at)",nativeQuery = true)
    @Transactional
    void makePayment(@Param("account_id")int account_id,
                     @Param("beneficiary_name")String beneficiary_name,
                     @Param("beneficiary_acc_number")String beneficiary_acc_number,
                     @Param("reference_no")String reference_no,
                     @Param("amount") double amount,
                     @Param("status")String status,
                     @Param("reason_code")String reason_code,
                     @Param("created_at")LocalDateTime created_at);
}
