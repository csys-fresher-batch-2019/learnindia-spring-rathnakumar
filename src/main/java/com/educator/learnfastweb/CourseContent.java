package com.educator.learnfastweb;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.assertj.core.util.Arrays;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.util.FileCopyUtils;

import com.educator.learnfast.models.UserInfo;

import java.nio.charset.StandardCharsets;
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
		Path path = Paths.get(""+fileName+".txt");
		ArrayList<String> l1 = (ArrayList<String>) Files.readAllLines(path);
		request.setAttribute("content",l1);
		RequestDispatcher rd = request.getRequestDispatcher("CourseContent.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		 Resource resource = new ClassPathResource("classpath:data.txt");
	        InputStream inputStream = resource.getInputStream();
	        byte[] bdata = FileCopyUtils.copyToByteArray(inputStream);
            String data = new String(bdata, StandardCharsets.UTF_8);
	}

}
