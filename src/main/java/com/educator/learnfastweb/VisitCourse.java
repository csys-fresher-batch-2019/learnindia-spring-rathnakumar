package com.educator.learnfastweb;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VisitCourse")
public class VisitCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public VisitCourse() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String fileName = request.getParameter("courseId");
		Path path = Paths.get("D:\\coursecontent\\"+fileName+".txt");
		ArrayList<String> l1 = (ArrayList<String>) Files.readAllLines(path);
		request.setAttribute("contentvid",l1);
		RequestDispatcher rd = request.getRequestDispatcher("VisitCourse.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
