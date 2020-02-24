package com.educator.learnfastweb;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.educator.learnfast.Exception.DbException;
import com.educator.learnfast.implementation.CoursesDAOImplementation;
import com.educator.learnfast.models.CourseInfo;
@WebServlet("/SearchCourse")
public class SearchCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchCourse() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String cName = request.getParameter("courseName");
		String cCategory = request.getParameter("Category");
		String instructorName = request.getParameter("instructorName");
		CourseInfo arg = new CourseInfo();
		arg.setCourseName(cName);
		arg.setCourseCategory(cCategory);
		arg.setInstructorName(instructorName);
		CoursesDAOImplementation met = new CoursesDAOImplementation();
		ArrayList<CourseInfo> out = new ArrayList<CourseInfo>();
		try {
			out = met.displayCourses(arg);
		} catch (DbException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("result", out);
		RequestDispatcher rd = request.getRequestDispatcher("SearchList.jsp");
		rd.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
