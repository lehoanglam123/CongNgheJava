package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.mail.iap.Literal;

import DAO.ProductDAO;
import Model.Cart;
import Model.Item;
import Model.Product;



@WebServlet("/addtocart")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ProductDAO dao = new ProductDAO();
		int quantity = 1;
		String id = request.getParameter("id");
		if(id!=null) {
			Product model = dao.getProductByid(id);
			HttpSession session = request.getSession();
			if(session.getAttribute("cart")==null) {
				Cart cart = new Cart();
				List<Item> list = new ArrayList<Item>();
				Item item = new Item();
				item.setProduct(model);
				item.setQuantity(quantity);
				list.add(item);
				cart.setItems(list);
				session.setAttribute("cart",cart);
			}else {
				Cart cart = (Cart) session.getAttribute("cart");
				List<Item> listItems = cart.getItems();
				boolean check = false;
				for(Item item:listItems) {
					if(item.getProduct().getId()==model.getId()) {
						item.setQuantity(item.getQuantity()+quantity);
						check =true;
					}
				}
				if(check==false) {
					Item item = new Item();
					item.setQuantity(quantity);
					item.setProduct(model);
					listItems.add(item);
					cart.setItems(listItems);
					
				}
				session.setAttribute("cart", cart);
			}
			response.sendRedirect("Cart.jsp");
//			request.setAttribute("cart", session);
//			request.getRequestDispatcher("Cart.jsp").forward(request, response);
		}
	}

	private int isExisting(String id, Cart cart) {
		for (int i = 0; i < cart.getItems().size(); i++) {
			if (cart.getItems().get(i).getProduct().getId() == Integer.parseInt(id)) {
				return i;
			}
		}
		return -1;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	
	
	
	
	protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		int index = isExisting(request.getParameter("id"), cart);
		cart.getItems().remove(index);
		session.setAttribute("cart", cart);
		response.sendRedirect("cart");
	}

}
