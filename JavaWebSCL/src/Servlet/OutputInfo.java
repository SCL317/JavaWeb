package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OutputInfo
 */
@WebServlet("/OutputInfo")
public class OutputInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OutputInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>输出报头相关信息</title></head>");
		out.println("<body>");
		Enumeration headers = request.getHeaderNames();
		while (headers.hasMoreElements()) {
			String name = (String) headers.nextElement();
			String value = request.getHeader(name);
			out.println("<h3>" + name + ":" + value + "</h3>");
		}
		out.println("<h3>客户端的IP地址" + request.getRemoteAddr() + "</h3>");
		out.println("<h3>客户端的端口号" + request.getRemotePort() + "</h3>");
		out.println("<h3>服务器的IP地址" + request.getLocalAddr() + "</h3>");
		out.println("<h3>服务器的端口号" + request.getLocalPort() + "</h3>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
