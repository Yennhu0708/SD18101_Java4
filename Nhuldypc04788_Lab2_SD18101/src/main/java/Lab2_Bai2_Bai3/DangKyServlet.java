package Lab2_Bai2_Bai3;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DangKyServlet
 */
@WebServlet("/DangKyServlet")
public class DangKyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DangKyServlet() {
        super();
       
    }
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String method = req.getMethod();
    	if (method.contains("GET")) {
			req.getRequestDispatcher("/view/Lab2_Bai2_Bai3/Form.jsp").forward(req, resp);
		}else {
			boolean gender = Boolean.parseBoolean(req.getParameter("gender"));
			String gioiTinh ="";
			if (gender == true) {
				gioiTinh = "Nam";
			}else {
				gioiTinh = "Nữ";
			}
			boolean married = (req.getParameter("married") != null);
			String honNhan ="";
			if (married == true) {
				honNhan = "Đã Kết Hôn" ;
			}else {
				honNhan = "Chưa Kết Hôn" ;
			}
			String[] hobbies = req.getParameterValues("hobbies");
	
			req.setAttribute("username",req.getParameter("username"));
			req.setAttribute("password",req.getParameter("password"));
			req.setAttribute("gender",gioiTinh);
			req.setAttribute("married",honNhan);
			req.setAttribute("country",req.getParameter("country"));
			req.setAttribute("hobbies",Arrays.toString(hobbies));
			req.setAttribute("notes",req.getParameter("notes"));
			
			req.getRequestDispatcher("/view/Lab2_Bai2_Bai3/result.jsp").forward(req, resp);
		}
    }
}
