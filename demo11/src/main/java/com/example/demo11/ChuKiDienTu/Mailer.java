package com.example.demo11.ChuKiDienTu;

import java.io.File;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.mail.internet.MimeMultipart;

public class Mailer {
    public   void send(String to ,String subject ,String msg,String path,String namefile)
    {
        System.out.println("in Mailer class");
        final String user="nguyenduy.30719@gmail.com";
        final String psw="hwtuiyfvalxmlzxg";//changes to be made accoordingly


        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");



        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(user,psw);
                    }
                });


        try
        {
            System.out.println(to+""+subject+""+msg);

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            //message.setText(msg);


            //Mail sending with attachement



            BodyPart msgBodyPart1 = new MimeBodyPart();
            msgBodyPart1.setText("This is message body");

            Multipart multipart = new MimeMultipart();
            multipart.addBodyPart(msgBodyPart1);

            MimeBodyPart msgBodyPart2 = new MimeBodyPart();


//             path = "F:/";
//             namefile ="ts.pdf";
            String filename= path+namefile;

            System.out.println(path);


            message.setHeader("Content-Disposition", "attachement ; filename= \""+namefile+"\"");
            DataSource src = new FileDataSource(filename);
            msgBodyPart2.setDataHandler(new DataHandler(src));
            msgBodyPart2.setFileName(namefile);
            multipart.addBodyPart(msgBodyPart2);

            message.setContent(multipart);

            //SEND MSG
            Transport.send(message);
            System.out.println("Mail sent successfully");

        }
        catch(MessagingException e)
        {
            System.out.println(e);
        }
    }

//    public static void main(String[] args) {
//        send("19130057@st.hcmuaf.edu.vn","dd","ddd");
//    }
}
