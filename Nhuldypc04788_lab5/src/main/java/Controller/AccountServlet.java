package Controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.NoResultException;

import org.apache.commons.beanutils.BeanUtils;

import Dao.UserDao;
import Entity.User;

@WebServlet({ "/account/sign-in", "/account/sign-up", "/account/sign-out", "/account/forgot-password",
		"/account/change-password", "/account/edit-profile" })
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserDao dao = new UserDao();

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();
		System.out.println(uri);
		if (uri.contains("sign-in")) {
			this.doSignIn(session, request, response);
		} else if (uri.contains("edit-profile")) {
			doEditProfile(session, request, response);
		} else if (uri.contains("sign-up")) {
			doSignUp(session, request, response);
		}else if (uri.contains("sign-out")) {
			doSignOut(session, request, response);
		}else if (uri.contains("change-password")) {
			doChangePass(session, request, response);
		}else if (uri.contains("forgot-password")) {
			doForgotPass(request, response);
		}
	
	}

	protected void doSignIn(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		String method = request.getMethod();

		if (method.contains("POST")) {
			User user = dao.findOne(username, password);
			if (user != null) {
				session.setAttribute("curentUser", user);
				response.sendRedirect("edit-profile");
			}
		} else {
			request.getRequestDispatcher("/view/Bai4/sign-in.jsp").forward(request, response);
		}
	}

	protected void doEditProfile(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User) session.getAttribute("curentUser");
		String method = request.getMethod();
		if (method.contains("POST")) {
			try {
				BeanUtils.populate(user, request.getParameterMap());
				User changeUser = dao.update(user);
				if (changeUser != null) {
					response.sendRedirect("edit-profile");
				}
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
		} else {
			request.setAttribute("form", user);
			request.getRequestDispatcher("/view/Bai4/edit-profile.jsp").forward(request, response);
		}
	}
	protected void doSignUp(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getMethod();
		if (method.contains("POST")) {
			User user = new User();
			try {
				BeanUtils.populate(user, request.getParameterMap());
				dao.create(user);
				System.out.println("Dang ky thanh cong");
				response.sendRedirect("sign-in");
				
			} catch (IllegalAccessException|InvocationTargetException e) {
				e.printStackTrace();
			}
		}else {
			request.getRequestDispatcher("/view/Bai4/sign-up.jsp").forward(request, response);
			
		}
		
	}
	protected void doChangePass(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				User user = (User) session.getAttribute("curentUser");
				String method  = request.getMethod();
				if (method.contains("POST")) {
					 try {
					String oldpass = request.getParameter("oldpass");
					String newpass = request.getParameter("newpass");
					String cfpass = request.getParameter("cfpass");
					if (user != null)  
		                if (user.getPassword().equals(oldpass)) {
		                    user.setPassword(newpass);
		                    dao.update(user);
		                    response.sendRedirect("sign-in");
		                    System.out.println("Thay đổi pass thành công!");
		                } else {
		                    request.setAttribute("message", "Oop! It's failure, please try again!");
		                    response.getWriter().write("<script>$('#changepass').modal('show');</script>");
		                }
				} catch (Exception e) {
		            e.printStackTrace();
	}
				}
				else {
					 response.getWriter().write("<script>$('#changepass').modal('show');</script>");			    }
	}

	protected void doSignOut(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		session.removeAttribute("curentUser");
		response.sendRedirect("sign-in");
	}
	protected void doForgotPass(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");

		String method = request.getMethod();
		
		if (method.contains("POST")) {

			try {
				User user = dao.findAllByEmail(email);
				String sendpass = user.getPassword();
				System.out.println(sendpass);
				sendCurrentPass(user.getEmail(), sendpass);
				response.sendRedirect("sign-in");
				System.out.println("Đã gửi mail");
			} catch (NoResultException e) {
				response.sendRedirect("forgot-password");
				System.out.println("Email ko tồn tai");
			}

		} else {
			request.getRequestDispatcher("/view/Bai4/ForgotPass.jsp").forward(request, response);
		}
	}
	private void sendCurrentPass(String toEmail, String sendpass) {
		// Tương tự như hàm gửi email đã thực hiện trong UserServiceImpl
		// Gửi mã xác nhận đến email người dùng ở đây
		final String email = "yennhudesign@gmail.com";
		final String password = "qntanisshixmazyk";

		Properties prop = new Properties();

		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");

		Session session = Session.getDefaultInstance(prop, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(email, password);
			}
		});

		Message message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(email));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
			message.setSubject("Quên mật khẩu");
			message.setText("Mật khẩu của bạn: " + sendpass);

			Transport.send(message);
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}