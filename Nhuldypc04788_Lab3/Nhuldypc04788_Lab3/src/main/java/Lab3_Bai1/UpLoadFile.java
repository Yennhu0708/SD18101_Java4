package Lab3_Bai1;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/UpLoadFile")
public class UpLoadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpLoadFile() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/views/Lab3_Bai1/upFile.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		File dir = new File(request.getServletContext().getRealPath("/upload"));
		if (!dir.exists()) {
			dir.mkdir();
		}
		System.out.println(dir);
		
		Part photo = request.getPart("photo_file"); // file hình
		File photoFile = new File(dir, photo.getSubmittedFileName());
		photo.write(photoFile.getAbsolutePath());
		
		Part doc = request.getPart("doc_file"); // file tài liệu
		File docFile = new File(dir, doc.getSubmittedFileName());
		doc.write(docFile.getAbsolutePath());

		request.setAttribute("img", photoFile);
		request.setAttribute("doc", docFile);

		request.getRequestDispatcher("/views/Lab3_Bai1/resultFile.jsp").forward(request, response);

	}

}
