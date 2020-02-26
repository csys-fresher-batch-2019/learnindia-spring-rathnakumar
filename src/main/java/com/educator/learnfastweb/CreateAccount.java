package com.educator.learnfastweb;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.educator.learnfast.implementation.UserDAOImplementation;
import com.educator.learnfast.models.UserInfo;

@WebServlet("/CreateAccount")
public class CreateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CreateAccount() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		StringBuilder nameB = new StringBuilder();
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		nameB.append(firstName+" "+lastName);
		UserInfo arg = new UserInfo();
		arg.setUserName(nameB.toString());
		arg.setEmailId( request.getParameter("email"));
		arg.setUserPassword(request.getParameter("password"));
		System.out.println("hello");
		boolean result = false;
		UserDAOImplementation met = new UserDAOImplementation();
		boolean check = false;
		try {
			check = met.Emailidcheck(arg.getEmailId());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(check==false) {
			try {
				result = met.addUser(arg);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("Signup.jsp");
			}
		if(result==true) {
			response.sendRedirect("index.jsp");
		}
	}
		else
			response.sendRedirect("Signup.jsp?msg=Email Id Already Exists");
	}

}
