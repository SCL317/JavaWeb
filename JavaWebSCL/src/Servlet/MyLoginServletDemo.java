package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.buf.StringCache;

/**
 * Servlet implementation class MyLoginServletDemo
 */
@WebServlet("/MyLoginServletDemo")
public class MyLoginServletDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyLoginServletDemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");   //设置生成文档的类型
		PrintWriter out =response.getWriter();   //得到输出字符输出流
		out.println("<html>");
		out.println("<head><title>用servlet测试get/post方法</title></head>");
		out.println("<body>");
		out.println("<h2>调用doGet()方法</h2>");
		out.println("<h2>用户输入信息如下：</h2>");
		String username = request.getParameter("username");
		if (username==null||username=="") 
			username="未输出";
		String userpwd =request.getParameter("password");
		if (userpwd==null||userpwd=="")
			userpwd="未输入";
		out.println("<h2>用户名："+username+"</h2>");
		out.println("<h2>密码："+userpwd+"</h2>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out =response.getWriter();
		out.println("<html>");
		out.println("<head><title>用servlet测试get/post方法</title></head>");
		out.println("<body>");
		out.println("<h2>调用doPost()方法</h2>");
		out.println("<h2>用户输入信息如下：</h2>");
		String username = request.getParameter("username");
		if (username==null||username=="") 
			username="未输出";
		String userpwd =request.getParameter("password");
		if (userpwd==null||userpwd=="")
			userpwd="未输入";
		out.println("<h2>用户名："+username+"</h2>");
		out.println("<h2>密码："+userpwd+"</h2>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}
