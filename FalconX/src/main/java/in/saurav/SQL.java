package in.saurav;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class SQL 
{
	Connection con = null;
	PreparedStatement st = null;
	ResultSet resultSet;
	SQL(String url , String user , String password) throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,password);
			System.out.println("Connection Successfull");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public boolean insert_into_register(R_User r_user)
	{
		String query = "insert into register values(?,?,?,?,?,?,?,?,?)";
		try {
			st = con.prepareStatement(query);
			st.setString(1, r_user.getF_name());
			st.setString(2, r_user.getM_name());
			st.setString(3, r_user.getL_name());
			st.setString(4, r_user.getEmail());
			st.setString(5, r_user.getM_number());
			st.setString(6, r_user.getB_group());
			st.setString(7, r_user.getId());
			st.setString(8, r_user.getPass());
			st.setString(9, r_user.getC_pass());
			st.execute();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return false;
	}
	public boolean auth(User user) {
		// TODO Auto-generated method stub
		
		String query = "SELECT * FROM register where id = ? and pass = ?";
		try {
			st = con.prepareStatement(query);
			st.setString(1, user.getId());
			st.setString(2, user.getPass());
			st.execute();
			resultSet = st.executeQuery();
			
			if(resultSet.next()) {
				return true;
			}
			return false;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean insert_into_login(User user) 
	{
		String query = "insert into login values(?,?)";
		try 
		{
			st = con.prepareStatement(query);
			st.setString(1, user.getId());
			st.setString(2, user.getPass());
			st.execute();
			return true;
		} catch (SQLException e) 
		{
			e.printStackTrace();
			return false;
		}
		
	}
}	

