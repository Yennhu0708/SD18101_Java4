package Utf8Filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class Utf8
 */
@WebFilter("/*")
public class Utf8 implements Filter {
       
    @Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain reChain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println("doFilter Call @@@");
		reChain.doFilter(request, response);
	}

}
