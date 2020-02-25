package com.educator.learnfastweb;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.educator.learnfast.implementation.CoursesDAOImplementation;
import com.educator.learnfast.models.ContentInfo;


@WebServlet("/ContentInfoServlet")
public class ContentInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ContentInfoServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		CoursesDAOImplementation met = new CoursesDAOImplementation();
		int courseId = Integer.parseInt(request.getParameter("courseId").toString());
		ArrayList<ContentInfo> l1 = new ArrayList<ContentInfo>();
		try {
			l1 = met.fetchCourseContent(courseId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("content",l1);
		RequestDispatcher rd = request.getRequestDispatcher("CourseContent.jsp");
		rd.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
