package Lab1_Bai6;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/HinhChuNhat")
public class HinhChuNhat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public HinhChuNhat() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/view/HinhChuNhat/form.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		double dai = Double.parseDouble(request.getParameter("dai"));
		double rong = Double.parseDouble(request.getParameter("rong"));
		double dt = dai*rong;
		double cv =(dai+rong)*2;
		
		request.setAttribute("dientich", dt);
		request.setAttribute("chuvi", cv);

		request.getRequestDispatcher("/view/HinhChuNhat/result.jsp").forward(request, response);
		
	}

}
