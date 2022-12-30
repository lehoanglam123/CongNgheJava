package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Category;
import Model.Product;

/**
 * Servlet implementation class UpdateProduct
 */
@WebServlet("/updateproduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String name = request.getParameter("nameproduct");
		String idcate= request.getParameter("category");
		String image = request.getParameter("image");
		String price = request.getParameter("price");
		String quanity = request.getParameter("quantity");
		String title =  request.getParameter("title");
		String description =  request.getParameter("description");
		ProductDAO dao = new ProductDAO();
		
		dao.edit(id,idcate,name, image, price, quanity, title, description);
		response.sendRedirect("http://localhost:10351/AppliJava/ProductController");
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
