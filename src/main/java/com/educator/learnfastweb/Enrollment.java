package com.educator.learnfastweb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.educator.learnfast.Exception.DbException;
import com.educator.learnfast.implementation.EnrollmentDAOImplementation;
import com.educator.learnfast.models.UserInfo;

@WebServlet("/Enrollment")
public class Enrollment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int userId = Integer.parseInt(request.getAttribute("userId").toString());
		int courseId = Integer.parseInt(request.getParameter("id").toString());
		EnrollmentDAOImplementation met = new EnrollmentDAOImplementation();
		boolean result = false;
		try {
			result = met.saveEnrollment(userId, courseId);
		} catch (DbException e) {
			e.printStackTrace();
		}
		if(result==true) {
			RequestDispatcher rd1 = request.getRequestDispatcher("UserHome.jsp");
			rd1.forward(request, response);
		}
		else {
			RequestDispatcher rd2 = request.getRequestDispatcher("UserHome.jsp?msg=You Cannot Enroll More than 5 Courses");
			rd2.forward(request, response);
		}
		

	}

}
