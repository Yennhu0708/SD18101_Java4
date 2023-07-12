package Lab2_Bai4;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LifeCycleServlet")
public class LifeCycleServlet extends HttpServlet {

	int count;
	Path path = Paths
			.get("D:\\Smer2023\\BLOCK_2\\LapTrinhJava04_SOF301_IT18102\\Lab\\Nhuldypc04788_Lab2_SD18101\\count.txt");

	@Override
	public void init() throws ServletException {
		try {
			count = Integer.parseInt(Files.readAllLines(path).get(0));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("init() T " + Thread.currentThread().getId());
	};

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		count++;
		req.setAttribute("count", count);
		String method = req.getMethod();

		if (method.contains("GET")) {
			req.getRequestDispatcher("/view/Lab2_Bai4/hit-counter.jsp").forward(req, resp);
		}

		System.out.println("service() T " + Thread.currentThread().getId());
	}

	@Override
	public void destroy() {
		try {
			Files.write(path, String.valueOf(count).getBytes(), StandardOpenOption.WRITE);
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("destroy() T " + Thread.currentThread().getId());
	}

}
