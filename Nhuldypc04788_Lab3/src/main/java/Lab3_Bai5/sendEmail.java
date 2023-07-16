package Lab3_Bai5;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sendEmail
 */
@WebServlet("/sendEmail")
public class sendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public sendEmail() {
        super();
    }

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/views/Lab3_Bai5/Sendmail.jsp").forward(req, resp);
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		final String email = "yennhudesign@gmail.com";
		final String password = "ksvsusbwpdrbquia";
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");

		
		Session s = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(email, password);
			}
		});
		String toemail = req.getParameter("to");
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");
		try {
			Message msg = new MimeMessage(s);
			msg.setFrom(new InternetAddress(email));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toemail));
			msg.setSubject(subject);
			msg.setText(content);
			Transport.send(msg);
			System.out.println("Done");
		} catch (Exception e) {
			
		}
		// kiểm tra gửi mail
		if (toemail.equalsIgnoreCase("") || subject.equalsIgnoreCase("") || content.equalsIgnoreCase("")) {
			req.setAttribute("message", "Vui lòng nhập đầy đủ!");
		} else {
			req.setAttribute("message", "Gửi email thành công!");
		}
		req.getRequestDispatcher("/views/Lab3_Bai5/Sendmail.jsp").forward(req, resp);
	}
		
	}


