package com.ct;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.swing.JOptionPane;

public class Mail {

    public  static void mail(String email, String sub , String body) throws MessagingException {
    
	try{
	System.out.println(sub+"...."+email);
    String host = "smtp.gmail.com";
    String from = "sannihith13";
    String pass = "Sunnysadhu@12";
    Properties props = System.getProperties();
    props.put("mail.smtp.starttls.enable", "true"); // added this line
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");

    String[] to = {email}; // added this line

    Session session = Session.getDefaultInstance(props, null);
    MimeMessage message = new MimeMessage(session);
    message.setFrom(new InternetAddress(from));

    InternetAddress[] toAddress = new InternetAddress[to.length];

    // To get the array of addresses
    for( int i=0; i < to.length; i++ ) { // changed from a while loop
        toAddress[i] = new InternetAddress(to[i]);
    }
    System.out.println(Message.RecipientType.TO);

    for( int i=0; i < toAddress.length; i++) { // changed from a while loop
        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
    }
    message.setSubject(sub);
	

	message.setContent(body, "text/html");

	
    Transport transport = session.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();
    //JOptionPane.showMessageDialog(null,"code sucessfully send to mail");
	}
	catch(Exception e)
	{
System.out.println(e);
	}
}
    public static void main(String a[])        
    {
        try {
           mail("sajid24x7@gmail.com", "222", "222");
        } catch (Exception ex) {
           // Logger.getLogger(mail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
