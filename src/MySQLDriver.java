

//import java.sql.SQLException;

import com.mysql.jdbc.Driver;
import java.sql.*;

public class MySQLDriver {
	
	private Connection con;
	private final static String selectName = "SELECT * FROM LoginInfo WHERE USERNAME=?";
	private final static String addProduct = "INSERT INTO LoginInfo(USERNAME, userpasswordHash) VALUES(?,?)";
//	private final static String updateTable = "UPDATE FACTORYORDERS SET CREATED = ? WHERE NAME = ?";
	
	public MySQLDriver()
	{
		try{
			new Driver();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void connect()
	{
		try{
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EndLessBattle?user=root&password=");
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void add(String username, int passwordHash)
	{
		try{

			PreparedStatement ps = con.prepareStatement(addProduct);
			ps.setString(2, username);
			ps.setInt(3, passwordHash);
			ps.executeUpdate();

		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public int getPassword(String username)
	{
		if(doesExist(username))
		{

			try
			{
				PreparedStatement ps = con.prepareStatement(selectName);

				ps.setString(1, username);
				ResultSet result = ps.executeQuery();
				while(result.next())
				{
					int hash = result.getInt(3);
					return hash;
				}
			}
			catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
		return 0;
	}
	
	public boolean doesExist(String username)
	{
		try{
			PreparedStatement ps = con.prepareStatement(selectName);
			ps.setString(1, username);
			ResultSet result = ps.executeQuery();
			while(result.next()) {
				return true;
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public void stop()
	{
		try{
			con.close();
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
}
