package Lab3_Bai4;

import java.io.IOException;
import javax.servlet.http.Cookie;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");

		String email = CookieUtils.get("email", req);
		String password = CookieUtils.get("password", req);

		req.setAttribute("email", email);
		req.setAttribute("password", password);

		req.getRequestDispatcher("/views/Lab3_Bai4/Login.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String remember = req.getParameter("remember");
		
		
		if(!email.equalsIgnoreCase("poly@gmail.com")) {
			req.setAttribute("message", "Sai tên đăng nhập!");
			}
			else if (!password.equalsIgnoreCase("poly")) {
			req.setAttribute("message", "Sai mật khẩu!");
			}else if (remember == null) {
			req.setAttribute("message", "Vui lòng chọn 'Remember me' để ghi nhớ tài khoản!");
			}else {
			req.setAttribute("message", "Đăng nhập thành công!");
			// ghi nhớ hoặc xóa tài khoản đã ghi nhớ bằng cookie
			int hours = (remember == null) ? 0 : 30*24; // 0 = xóa
			CookieUtils.add("email", email, hours, resp);
			CookieUtils.add("password", password, hours, resp);
			}

		req.getRequestDispatcher("/views/Lab3_Bai4/Login.jsp").forward(req, resp);

	}

	}

