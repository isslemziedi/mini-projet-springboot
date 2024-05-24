package com.ufrcni.isslemproject.mailMessenger;

import com.ufrcni.isslemproject.config.MailConfig;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailMessenger {
    public static void htmlEmailMessenger(String from,String toMail,String subject , String body) throws MessagingException {
        JavaMailSender sender = MailConfig.getMailConfig();

        MimeMessage message = sender.createMimeMessage();

        MimeMessageHelper htmlMessage = new MimeMessageHelper(message,true);

        //set mail attributes
        htmlMessage.setTo(toMail);
        htmlMessage.setFrom(from);
        htmlMessage.setSubject(subject);
        htmlMessage.setText(body,true);

        //send message
        sender.send((message));

    }
}
