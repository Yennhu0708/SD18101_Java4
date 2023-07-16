package Lab3_Bai2;

import java.io.IOException;
import java.sql.Date;
import java.io.File;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;


@MultipartConfig
@WebServlet("/StaffServlet")
public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public StaffServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/views/Lab3_Bai2/Form.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		try {
			SimpleBean staff = new SimpleBean();
			File dir = new File(req.getServletContext().getRealPath("/files")); 
			if(!dir.exists()) { 
			 dir.mkdirs(); 
			} 
			System.out.println(dir);			
			Part photo = req.getPart("photo_file"); 
			File photoFile = new File(dir, photo.getSubmittedFileName()); 
			photo.write(photoFile.getAbsolutePath()); 
			
			// Định dạng thời gian nhập vào
			DateConverter dtc = new DateConverter(new Date(0));
			dtc.setPattern("MM/dd/yyyy");
			ConvertUtils.register(dtc, Date.class);

			
			BeanUtils.populate(staff, req.getParameterMap());

			staff.setPhoto(photoFile.getName()); 
			
			String gender = req.getParameter("gender");
			if (gender != null) {
				if (gender.equals("male")) {
					staff.setGender("Nam");
				} else if (gender.equals("female")) {
					staff.setGender("Nữ");
				}
			}
			// Chia sẻ với result.jsp
			req.setAttribute("bean", staff);
			System.out.println(req.getParameter("birth"));
		} catch (Exception e) {
			e.printStackTrace();
		}

	req.getRequestDispatcher("/views/Lab3_Bai2/resultForm.jsp").forward(req, response);
	}

}
