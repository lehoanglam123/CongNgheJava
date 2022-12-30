package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.LoginDAO;
import Model.Account;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		String userName = request.getParameter("userName");
		String passWords = request.getParameter("passWords");
		
		if(userName!=null && passWords!=null) {
			LoginDAO entity= new LoginDAO();
			Account model = entity.Login(userName, passWords);			
			if(model!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("user",model);
				request.getRequestDispatcher("HomeController");
			}else {
				request.setAttribute("notifications","Đăng nhập không thành công" );
				request.getRequestDispatcher("Login-Register.jsp").forward(request, response);
			}
		}else {
			request.setAttribute("mess","Vui lòng nhập tên đăng nhập và mật khẩu" );
			request.getRequestDispatcher("Login-Register.jsp").forward(request, response);
		}
		
	}  

}
