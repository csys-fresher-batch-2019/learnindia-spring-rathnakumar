package com.educator.learnfastweb;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.educator.learnfast.implementation.UserDAOImplementation;
import com.educator.learnfast.models.CourseHistory;

@WebServlet("/CourseHistoryServlet")
public class CourseHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public CourseHistoryServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String id = (String) request.getParameter("id");
		int userId = Integer.parseInt(id);
		ArrayList<CourseHistory> res = new ArrayList<CourseHistory>();
		UserDAOImplementation met = new UserDAOImplementation();
		res = met.getCourseHistory(userId, 1);
		request.setAttribute("list", res);
		RequestDispatcher rd = request.getRequestDispatcher("CourseView.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
