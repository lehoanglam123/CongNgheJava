package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Model.Account;

public class LoginDAO {
	 public static Connection getConnection(){  
	        Connection con=null;  
	        try{  
	            Class.forName("com.mysql.jdbc.Driver");  
	            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdl","root","hoanglam212aA");
	            
	        }catch(Exception e){System.out.println(e);}  
	        return con;  
	 }
	 
	 public Account Login(String userName,String passWords) {
		 Account entity = new Account();
		 try {
			 Connection connection = LoginDAO.getConnection();			 
			 PreparedStatement ps = connection.prepareStatement("SELECT * FROM TaiKhoan Where TenTaiKhoan =? AND MatKhau=?");
			 ps.setString(1, userName);
			 ps.setString(2, passWords);
			 ResultSet rs = ps.executeQuery();
			 while(rs.next()) {
				 entity.setId(rs.getInt(1));
				 entity.setUserName(rs.getString(2));
				 entity.setPassWords(rs.getString(3));
				 entity.setIsAdmin(rs.getInt(4));
				 return entity;
			 }
		 }catch (Exception e) {}
		 return null;
	 }
	 public boolean checkUserName(String name) {
		 
		 try {
			 Connection connection = LoginDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("select * from TaiKhoan where TenTaiKhoan=?");
			 pst.setString(1,name);
			 ResultSet rs = pst.executeQuery();
			 if(rs.next()) {
				 return true;
			 }
		 }catch (Exception e) {	}
		 return false;
	 }
	 public void insert(String userName, String passWords) {
		 try {
			 Connection connection = LoginDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("insert into TaiKhoan(TenTaiKhoan, MatKhau) values(?,?);");
			 pst.setString(1, userName);
			 pst.setString(2, passWords);
			 pst.executeUpdate();
		 }catch (Exception e) {
			
		}
	 }
}
