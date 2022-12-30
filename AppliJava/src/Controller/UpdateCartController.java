package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Cart;
import Model.Item;



@WebServlet("/updatecart")
public class UpdateCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		int index = isExisting(request.getParameter("id"), cart);
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		for(Item item : cart.getItems()) {
			if(item.getProduct().getId()==index){
				item.setQuantity(quantity);				
			}
		}
		
		session.setAttribute("cart", cart);
		response.sendRedirect("Cart.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private int isExisting(String id, Cart cart) {
		for (int i = 0; i < cart.getItems().size(); i++) {
			if (cart.getItems().get(i).getProduct().getId() == Integer.parseInt(id)) {
				return i;
			}
		}
		return -1;
	}

}
