package Controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import Dao.UserDao;
import Entity.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet({ "/user/index", "/user/create", "/user/update", "/user/delete", "/user/edit/*" })
public class Bai_2_3 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    private UserDao dao = new UserDao();
	
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	String uri = request.getRequestURI();

		String id = request.getParameter("btn");

		User user = null;
		
		List<User> list = dao.findAll();

		if (uri.contains("edit")) {
			user = dao.findAllById(Integer.parseInt(id));

		} else if (uri.contains("create")) {
			try {
				User auth = new User();
				BeanUtils.populate(auth, request.getParameterMap());
				dao.create(auth);
				request.setAttribute("message", "Thêm mới thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}

		} else if (uri.contains("update")) {
			try {
				String iduser = request.getParameter("id");
				User auth = dao.findAllById(Integer.parseInt(iduser));
				if (auth != null) {
					auth = new User();
					BeanUtils.populate(auth, request.getParameterMap());
					dao.update(auth);
					request.setAttribute("message", "Cập nhật thành công");
				}
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}

		} else if (uri.contains("delete")) {
			String iduser = request.getParameter("id");
			dao.delete(Integer.parseInt(iduser));
			request.setAttribute("message", "Xoá thành công");
		}

		request.setAttribute("form", user);
		request.setAttribute("item", list);
		request.getRequestDispatcher("/view/Bai_2_3/UserForm.jsp").forward(request, response);
    	
	}   
	
}
