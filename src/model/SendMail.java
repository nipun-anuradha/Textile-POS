/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;
import javax.swing.JOptionPane;

/**
 *
 * @author Anuradha
 */
public class SendMail {

    private String emailAddressTo = new String();
    private String msgSubject = new String();
    private String msgText = new String();

    final String USER_NAME = "agamers2000@gmail.com";   //User name of the Goole(gmail) account
    final String PASSSWORD = "rxeguloybzbafoch";  //Password of the Goole(gmail) account
    final String FROM_ADDRESS = "agamers2000@gmail.com";  //From addresss



//    public static void main(String[] args) {
//        SendMail email = new SendMail();
//        //Sending test email
//        email.createAndSendEmail("anuradha.studeo@gmail.com", "s55s subject  ss",
//                "Updatedssss msgss body");
//    }

    public void createAndSendEmail(String emailAddressTo, String msgSubject, String msgText) {
        this.emailAddressTo = emailAddressTo;
        this.msgSubject = msgSubject;
        this.msgText = msgText;
        sendEmailMessage();
    }

    private void sendEmailMessage() {

        //Create email sending properties
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("agamers2000@gmail.com", "rxeguloybzbafoch");
            }
        });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("agamers2000@gmail.com")); //Set from address of the email
            message.setContent(msgText, "text/html"); //set content type of the email

            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(this.emailAddressTo)); //Set email recipient

            message.setSubject(this.msgSubject); //Set email message subject
            Transport.send(message); //Send email message

//            System.out.println("sent email successfully!");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    public void setEmailAddressTo(String emailAddressTo) {
        this.emailAddressTo = emailAddressTo;
    }

    public void setSubject(String subject) {
        this.msgSubject = subject;
    }

    public void setMessageText(String msgText) {
        this.msgText = msgText;
    }
}
