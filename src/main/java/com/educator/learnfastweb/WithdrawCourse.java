package com.educator.learnfastweb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.educator.learnfast.implementation.EnrollmentDAOImplementation;
import com.educator.learnfast.models.UserInfo;

@WebServlet("/WithdrawCourse")
public class WithdrawCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public WithdrawCourse() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession sessioncourse = request.getSession();
		int courseId = Integer.parseInt(request.getParameter("courseId").toString());
		UserInfo ui = new UserInfo();
		HttpSession session = request.getSession();
		ui = (UserInfo)session.getAttribute("obj");
		EnrollmentDAOImplementation met = new EnrollmentDAOImplementation();
		boolean result = false;
		String userId = ui.getUserName();
		System.out.println(userId);
		System.out.println(courseId);
		result = met.removeEnrollment(courseId, ui.getUserId());
		if(result == true) {
			RequestDispatcher rd = request.getRequestDispatcher("UserHome.jsp?msg=Course Successfuly Withdrawn");
			rd.forward(request, response);
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
