import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class One
 */
@WebServlet("/One")
public class One extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor. 
	 */
	static int i=1;
	public One() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.println("<html><head> <!-- Compiled and minified CSS -->\r\n" + 
				"<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css\"></head>");

		Cookie[] ck = request.getCookies();

		String k=String.valueOf(i);
		Cookie c = new Cookie("visit",k);
		response.addCookie(c);
		int j=Integer.parseInt(c.getValue());

		if(j==1)
		{
			out.println("<div class=\"card-panel center light-blue darken-3\">\r\n" + 
					"                    <span class=\"card-title white-text\"><h2>Welcome!!</h2></span>\r\n" + 
					"                </div>");
		}
		else
		{
			out.println("<div class=\"card-panel center light-blue darken-3\">\r\n" + 
					"  <span class=\"card-title white-text\"><h2>Welcome back, You visited on "+ck[0].getValue()+"</h2></span>\r\n" + "</div>");
		}
		i++;  

		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss z");

		ck[0].setValue(formatter.format(date));

		response.addCookie(ck[0]);
	}
}
