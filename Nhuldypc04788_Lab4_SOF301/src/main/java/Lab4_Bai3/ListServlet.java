package Lab4_Bai3;

import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/ListServlet")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Item> items = Arrays.asList(new Item[] {
				new Item(1,"McDonald Hamburger", "sp1.png", 100, 0.1, new Date()),
				new Item(2,"Muffin Vanilla", "sp2.jpg", 5200, 0.1, new Date()),
				new Item(3,"Beef with caviar sauce", "sp3.jpg", 400, 0.1, new Date()),
				new Item(4,"Strawberry truffle cake", "sp4.jpg", 300, 0.1, new Date()),
				new Item(5,"Grilled vegetables", "sp5.jpg", 100, 0.1, new Date()),
				new Item(6,"Blueberry bread", "sp6.jpg", 200, 0.1, new Date()) 
		});
		request.setAttribute("items", items);
		request.getRequestDispatcher("/Views/Lab4_Bai4/list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
