package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProductDAO;
import Model.Product;


@WebServlet("/search")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); // nhận mã tiếng việt
		String search = request.getParameter("search"); // lấy giá trị từ o search 
		ProductDAO dao = new ProductDAO();
		List<Product> listSearch =  dao.searchProduct(search); // trả về 1 ds các sp theo tên 
		request.setAttribute("listproduct", listSearch);
		request.getRequestDispatcher("Home.jsp").forward(request,response);
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
