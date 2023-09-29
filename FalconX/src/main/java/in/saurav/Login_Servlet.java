package in.saurav;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Authentify")
public class Login_Servlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request , HttpServletResponse responce) throws IOException
	{		User obj = new User();
		obj.setId(request.getParameter("id"));
		obj.setPass(request.getParameter("psw"));
		SQL obj1;
		try {
			obj1 = new SQL(getServletContext().getInitParameter("url"),getServletContext().getInitParameter("username"),getServletContext().getInitParameter("password"));
			if(obj1.auth(obj))
			{
				System.out.println("Identification Successful");
				if(obj1.insert_into_login(obj))
				{
					System.out.println("Login Successful");	
					responce.sendRedirect("Home.jsp");
				}
			}
			else
			{
				responce.sendRedirect("Login.jsp?error=true");
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} 
							
}

