package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter; 
import DAO.LoginDAO;
import Model.Account;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String passWords = request.getParameter("password");
        String confirmPassWords = request.getParameter("confirmpass");
        
        if(name!=""&& passWords !=""&& confirmPassWords!="") {
        	if(!passWords.equals(confirmPassWords)) {
        		request.setAttribute("confirm", "Xác nhận mật khẩu không đúng");
        		request.getRequestDispatcher("Login-Register.jsp").forward(request, response);
        	}else {
        		LoginDAO entity = new LoginDAO();
        		boolean result = entity.checkUserName(name);
        		if(!result) {
        			entity.insert(name, passWords);
        			response.sendRedirect("Login-Register.jsp");
        		}else {
					request.setAttribute("successful", "Tài khoản đã tồn tại!");
					request.getRequestDispatcher("Login-Register.jsp").forward(request, response);
				}
        	}
        }else {
        	request.setAttribute("notification", "Vui lòng nhập tên đăng nhập và xác nhận mật khẩu");
			request.getRequestDispatcher("Login-Register.jsp").forward(request, response);
        }
	}

}
