package theatre;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class TheatreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		ResultSet rs1=null;
		HttpSession session=request.getSession();
		PreparedStatement pr=null;
		String date=request.getParameter("dateselect");
		if(date.equals("a"))
		{
			Cookie datec=new Cookie("datec","2020-11-05");
			response.addCookie(datec);
		}
		else if(date.equals("b"))
		{
			Cookie datec=new Cookie("datec","2020-11-06");
			response.addCookie(datec);
		}
		else if(date.equals("c"))
		{
			Cookie datec=new Cookie("datec","2020-11-07");
			response.addCookie(datec);
		}
		else if(date.equals("d"))
		{
			Cookie datec=new Cookie("datec","2020-11-08");
			response.addCookie(datec);
		}
		try
		{
			ArrayList<TheatreData> al=new ArrayList<TheatreData>();
			ArrayList<Thnmloc> at=new ArrayList<Thnmloc>();
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/moviedb","root","");
			st=con.createStatement();

			if(request.getParameter("a").equals("Book Manto"))
			{
				Cookie ck1=new Cookie("ck1","Manto");
				response.addCookie(ck1);
				rs=st.executeQuery("Select sh_date,sh_time,th_name,location from shows where movie_name='Manto'");			
				while(rs.next())
				{
					al.add(new TheatreData(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)));		
				}
				rs1=st.executeQuery("select th_name,location  from movie_list where movie_name='Manto' ");
				while(rs1.next())
				{
					at.add(new Thnmloc(rs1.getString(1),rs1.getString(2)));
				}
				session.setAttribute("tl1",at);
				session.setAttribute("tl",al);
				response.sendRedirect("manto.jsp");
			}
			if(request.getParameter("a").equals("Book Sui Dhaga"))
			{
				Cookie ck1=new Cookie("ck1","Sui Dhaga");
				response.addCookie(ck1);
				rs=st.executeQuery("select sh_date,sh_time,th_name,location from shows where movie_name='Sui Dhaga'");	
				while(rs.next())
				{
					al.add(new TheatreData(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)));		
				}

				rs1=st.executeQuery("select th_name,location from movie_list where movie_name='Sui Dhaga' ");
				while(rs1.next())
				{
					at.add(new Thnmloc(rs1.getString(1),rs1.getString(2)));
				}
				session.setAttribute("tl1",at);
				session.setAttribute("tl",al);
				response.sendRedirect("suidhaga.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
