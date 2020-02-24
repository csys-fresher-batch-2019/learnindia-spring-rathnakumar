package com.educator.learnfastweb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/CourseContent")
public class CourseContent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CourseContent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String fileName = request.getParameter("courseId");
		Path path = Paths.get("D:\\coursecontent\\"+fileName+".txt");
		ArrayList<String> l1 = (ArrayList<String>) Files.readAllLines(path);
		request.setAttribute("content",l1);
		RequestDispatcher rd = request.getRequestDispatcher("CourseContent.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
