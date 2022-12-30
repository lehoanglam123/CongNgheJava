package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import Model.Category;
import Model.Product;

public class CategoryDAO {
	
	public CategoryDAO() {
		
	}
	//connection database
	public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdl","root","hoanglam212aA");
            
        }catch(Exception e){System.out.println(e);}  
        return con;  
	}
	
	//load all category
	public List<Category> getAllCategory(){		
		List<Category> list =  new ArrayList<>();
		try {			
			Connection connection = CategoryDAO.getConnection();
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM theloai");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Category model = new Category(rs.getInt(1), rs.getString(2));
				list.add(model);
			}
			return list;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	public boolean getNameCategory(String name) {
		try {
			 Connection connection = CategoryDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("select * from theloai where TenTheLoai=?");
			 pst.setString(1,name);
			 ResultSet rs = pst.executeQuery();
			 if(rs.next()) {
				 return true;
			 }
		 }catch (Exception e) {	}
		 return false;
	}
	
	public void insert(String name) {
		try {
			 Connection connection = CategoryDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("insert into Theloai(TenTheLoai) values(?);");
			 pst.setString(1, name);
			 pst.executeUpdate();
		 }catch (Exception e) {
			
		}
	}
	
	public void delete(String id) {
		try {
			 Connection connection = CategoryDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("delete from theloai WHERE id=?;");
			 pst.setString(1, id);
			 pst.executeUpdate();
		 }catch (Exception e) {
			
		}
	}
	
	public Category getCategoryByID(int id) {
		try {
			 Connection connection = CategoryDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("SELECT * FROM theloai WHERE id=?;");
			 pst.setInt(1, id);
			 ResultSet rs = pst.executeQuery();
			 while(rs.next()) {
				 return new Category(rs.getInt(1),rs.getString(2));
			 }
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
