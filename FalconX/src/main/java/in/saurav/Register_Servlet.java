package in.saurav;

import java.io.IOException;import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class Register_Servlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest req , HttpServletResponse res) throws IOException
	{
		R_User obj = new R_User();
		obj.setF_name(req.getParameter("first_name"));
		obj.setM_name(req.getParameter("mid_name"));
		obj.setL_name(req.getParameter("last_name"));
		obj.setEmail(req.getParameter("email"));
		obj.setM_number(req.getParameter("phone"));
		obj.setB_group(req.getParameter("blood_group"));
		obj.setId(req.getParameter("id"));
		obj.setPass(req.getParameter("psw"));
		obj.setC_pass(req.getParameter("pswcon"));

		SQL obj1 = null;
		try {
			obj1 = new SQL(getServletContext().getInitParameter("url"),getServletContext().getInitParameter("username"),getServletContext().getInitParameter("password"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(obj.getPass()==obj.getC_pass())
		{
			if(obj1.insert_into_register(obj))	
			{
				res.sendRedirect("Login.jsp");
			}
			else
			{
				res.sendRedirect("Register.jsp?error_con=true");
			}
		}
		else
		{
			System.out.println("Password Mis_Match Error");
			res.sendRedirect("Register.jsp?error_pass=true");
		}
	}
}
