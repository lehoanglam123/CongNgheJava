package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.Product;

public class ProductDAO {

	public ProductDAO() {
	}

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/csdl", "root", "hoanglam212aA");

		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public Product getProductByid(String id) {
		try {
			 Connection connection = ProductDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("Select * from product WHERE id=?;");
			 pst.setString(1, id);
			 ResultSet rs = pst.executeQuery();			
			 while(rs.next()) {
				 return new Product(rs.getInt(1),
						 rs.getInt(2), 
						 rs.getString(3), 
						 rs.getString(4), 
						 rs.getDouble(5), 
						 rs.getInt(6), 
						 rs.getString(7),
						 rs.getString(8));
			 }
		 }catch (Exception e) {
			
		}
		return null;
	}

	public List<Product> getAllProduct() {
		List<Product> list = new ArrayList<Product>();
		try {
			Connection connection = ProductDAO.getConnection();
			PreparedStatement pst = connection.prepareStatement("select * from product;");
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Product model = new Product();
				model.setId(rs.getInt(1));
				model.setIdCategory(rs.getInt(2));
				model.setNameProduct(rs.getString(3));
				model.setImage(rs.getString(4));
				model.setPrice(rs.getDouble(5));
				model.setQuantity(rs.getInt(6));
				model.setDescribe(rs.getString(7));
				list.add(model);
			}
			return list;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public void insert(String idtl, String name, String image, String price, String quantity, String tt, String mt) {
		

		try {
			Connection connection = ProductDAO.getConnection();
			PreparedStatement pst = connection.prepareStatement("INSERT INTO product(idTL,nameproduct,hinhanh,dongia,soluong,tieude,moTa) VALUES(?,?,?,?,?,?,?);");

			pst.setString(1, idtl);
			pst.setString(2, name);
			pst.setString(3, image);
			pst.setString(4, price);
			pst.setString(5, quantity);
			pst.setString(6, tt);
			pst.setString(7, mt);
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void delete(String id) {
		try {
			 Connection connection = ProductDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("delete from product WHERE id=?;");
			 pst.setString(1, id);
			 pst.executeUpdate();
		 }catch (Exception e) {
			
		}
	}
	public void edit(String id, String idcate,String name, String image, String price, String quantity, String title, String description) {
		try {
			 Connection connection = ProductDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("UPDATE product SET idTL=?, nameProduct=?,hinhanh= ?,dongia=?,soluong=?,tieude=?,mota=? WHERE id =?;");
			 
			 pst.setString(1,idcate);
			 pst.setString(2,name);
		     pst.setString(3, image);
		     pst.setString(4, price);
		     pst.setString(5, quantity);
		     pst.setString(6, title);
		     pst.setString(7,description);
		     pst.setString(8, id);
		     pst.executeUpdate();
		 }catch (Exception e) {
			
		}
	}
	
	public List<Product> searchProduct(String name){
		List<Product> list = new ArrayList<Product>();
		try {
			 Connection connection = ProductDAO.getConnection();
			 PreparedStatement pst = connection.prepareStatement("select * from product where nameproduct LIKE ?;");
			 pst.setString(1,"%"+name+"%");
			 ResultSet rs = pst.executeQuery();
			 while(rs.next()) {
				 Product model = new Product();
				 model.setId(rs.getInt(1));
				 model.setIdCategory(rs.getInt(2));
				 model.setNameProduct(rs.getString(3));
				 model.setImage(rs.getString(4));
				 model.setPrice(rs.getDouble(5));
				 model.setQuantity(rs.getInt(6));
				 model.setTitle(rs.getString(7));
				 model.setDescribe(rs.getString(8));
				 list.add(model);
			} 
			 return list;
		}
		catch (Exception e) {
			
		}
		return null;
	}
	
//	public List<Product> getAllProduct(String name) {
//		List<Product> list = new ArrayList<Product>();
//		try {
//			Connection connection = ProductDAO.getConnection();
//			PreparedStatement pst = connection.prepareStatement("select * from product where nameproduct = ?;");
//			pst.setString(1, name);
//			ResultSet rs = pst.executeQuery();
//			while (rs.next()) {
//				Product model = new Product();
//				model.setId(rs.getInt(1));
//				model.setIdCategory(rs.getInt(2));
//				model.setNameProduct(rs.getString(3));
//				model.setImage(rs.getString(4));
//				model.setPrice(rs.getDouble(5));
//				model.setQuantity(rs.getInt(6));
//				model.setDescribe(rs.getString(7));
//				list.add(model);
//			}
//			return list;
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		return null;
//	}
}
