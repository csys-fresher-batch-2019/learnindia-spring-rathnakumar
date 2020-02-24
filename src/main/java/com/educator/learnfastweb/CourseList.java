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
	@WebServlet("/CourseList")
public class CourseList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CourseList() {
        super();
        // TODO Auto-generated constructor stub
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int userId = Integer.parseInt(request.getParameter("id").toString());
		int status = 1;
		UserDAOImplementation met = new UserDAOImplementation();
		ArrayList<CourseHistory> out = new ArrayList<CourseHistory>();
		out = met.getCourseHistory(userId, 2);
		request.setAttribute("list", out);
		RequestDispatcher rd = request.getRequestDispatcher("CourseList.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
