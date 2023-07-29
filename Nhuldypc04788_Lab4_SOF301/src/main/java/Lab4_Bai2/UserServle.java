package Lab4_Bai2;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/User")
public class UserServle extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public UserServle() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> Users = Arrays.asList(new User[] {
				new User("Username 1", "Password 1", true),
				new User("Username 2", "Password 2", false),
				new User("Username 3", "Password 3", true)
				});
		request.setAttribute("message", "Quản lý người sử dụng!");
		request.setAttribute("form", Users.get(0));
		request.setAttribute("items", Users);
		request.getRequestDispatcher("/Views/Lab4_Bai2/Index.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
