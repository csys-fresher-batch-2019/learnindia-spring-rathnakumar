package com.educator.learnfastweb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.educator.learnfast.implementation.UserDAOImplementation;
import com.educator.learnfast.models.UserInfo;
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		String id = request.getParameter("id");
		int val = Integer.parseInt(id);
		if(val==0) {
			UserDAOImplementation met = new UserDAOImplementation();
			UserInfo out = new UserInfo();
			out = met.UserLogin(email, pass);
			if(out.getUserId()!=0) {
			HttpSession session = request.getSession();
			session.setAttribute("obj", out);
			response.sendRedirect("UserHome.jsp");
			}
			else
				response.sendRedirect("Login.jsp?msg=Incorrect EmailId or Password");
		}
		if(val==1) {
			response.sendRedirect("Login.jsp");
		}
	}

}
