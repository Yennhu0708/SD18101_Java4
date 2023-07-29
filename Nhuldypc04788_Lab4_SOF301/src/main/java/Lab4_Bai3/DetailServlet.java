package Lab4_Bai3;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.taglibs.standard.extra.spath.Step;


/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/DetailServlet")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String productIdStr = request.getParameter("Id");
	        if (productIdStr != null) {
	            int SpId = Integer.parseInt(productIdStr);
	            
	            Item selectedProduct = getProductById(SpId);
	            if (selectedProduct != null) {
	                request.setAttribute("selectedItem", selectedProduct);
	                request.getRequestDispatcher("/Views/Lab4_Bai4/Detail.jsp").forward(request, response);
	            } else {
	                // Xử lý khi không tìm thấy sản phẩm
	                response.getWriter().println("NOT FOUND PRODUCT");
	            }
	        } else {
	            // Xử lý khi không có mã sản phẩm trong yêu cầu
	            response.getWriter().println("NOT FOUND PRODUCT");
	        }
		 Item item = new Item(1 , "McDonald Hamburger", "sp1.png", 100, 0.1, new Date());
		 request.setAttribute("item", item);
		 request.getRequestDispatcher("/Views/Lab4_Bai4/Detail.jsp").forward(request, response);

	}
    private Item getProductById(int itemId) {
        // Tạo danh sách sản phẩm mẫu (giả sử dữ liệu lấy từ cơ sở dữ liệu)
        List<Item> ItemList = new ArrayList<>();
        ItemList.add(new Item(1,"McDonald Hamburger", "sp1.png", 100, 0.1, new Date()));
        ItemList.add(new Item(2,"Muffin Vanilla", "sp2.jpg", 5200, 0.1, new Date()));
        ItemList.add(new Item(3,"Beef with caviar sauce", "sp3.jpg", 400, 0.1, new Date()));
        ItemList.add(new Item(4,"Strawberry truffle cake", "sp4.jpg", 300, 0.1, new Date()));
		ItemList.add(new Item(5,"Grilled vegetables", "sp5.jpg", 100, 0.1, new Date()));
		ItemList.add(new Item(6,"Blueberry bread", "sp6.jpg", 200, 0.1, new Date())); 
        
		
        // Tìm sản phẩm trong danh sách dựa vào mã sản phẩm
        for (Item p : ItemList) {
            if (p.getitemId() == itemId) {
                return p;
            }
        }

        return null;     }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
