

import java.io.File;
import java.sql.*;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import jakarta.servlet.annotation.WebServlet;

@WebServlet("/gmailid")
public class Gmail {
	public static void main(String[] args) {
		
		
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
			pstmt=con.prepareStatement("select * from user_registration.suppliers_user_info");
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				String gmail=rs.getString(4);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		String message="Hello, Dear, this message is for security check...";
		String subject="RajTransports : Confirmation";
		String to="jadhavshubhangi1206@gmail.com";
		String from="rajtransports2312@gmail.com";
		
//		sendEmail(message,subject,to,from);
		sendAttach(message,subject,to,from);
	}

private static void sendAttach(String message, String subject, String to, String from) {
		
	String host="smtp.gmail.com";
	
	Properties properties =System.getProperties();
	System.out.println("PROPERTIES : "+properties);
	
	properties.put("mail.smtp.host", host);
	properties.put("mail.smtp.port", "465");
	properties.put("mail.smtp.ssl.enable", "true");
	properties.put("mail.smtp.auth", "true");
	
	Session session=Session.getInstance(properties, new Authenticator() {

		@Override
		protected PasswordAuthentication getPasswordAuthentication() {
			
			return new PasswordAuthentication("rajtransports2312@gmail.com","flbhwxuznudpvwmj");
			
		}
	});
	
	
	session.setDebug(true);
	
	MimeMessage m=new MimeMessage(session);
	
	try {
		m.setFrom(from);
		
		m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		
		m.setSubject(subject);
		
		String path="C:/Users/raj55/Desktop/Images/login.jpg";
		
		
		
		
		MimeMultipart mimeMultipart=new MimeMultipart();
		m.setContent(mimeMultipart);
		
		MimeBodyPart textMime=new MimeBodyPart();
		
		MimeBodyPart fileMime=new MimeBodyPart();
		
		try {
			textMime.setText(message);
			File file=new File(path);
			
			mimeMultipart.addBodyPart(textMime);
		} catch (Exception e) {
			// TODO: handle exception
	e.printStackTrace();
		}
		
		
		Transport.send(m);
		
		System.out.println("Sent Successs........................");
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	}

//	This method is responsible to send email
	
}
