package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class initParameterDemo
 */
@WebServlet(urlPatterns = { "/initParameterDemo" }, 
initParams = { @WebInitParam(name = "name", value = "这是获取初始化变量"),
		       @WebInitParam(name = "major", value = "JavaWeb学习"),
		       @WebInitParam(name = "count", value = "0") })
public class initParameterDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	private String myName = null;
	private String myMajor = null;
	private int count = 0;

	public initParameterDemo() {
		super();

	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		myName = config.getInitParameter("name");
		if (myName == null) {
			myName = "";
		}
        myMajor=config.getInitParameter("major");
        if (myMajor==null) {
			myMajor="";
		}
        String strCount =config.getInitParameter("count");
        try {
//			count=Integer.parseInt(strCount);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out =response.getWriter();
		out.println("<html>");
		out.println("<head><title>获取初始化参数</title></head>");
		out.println("<body>");
		out.println("<h2>所学内容："+myName+"</h2>");
		out.println("<h2>所学专业："+myMajor+"</h2>");
		count++;
		out.println("<h2>访问的次数："+count+"</h2>");
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
