<%@page import = "java.util.ArrayList"%>
<%@page import = "com.educator.learnfast.implementation.CoursesDAOImplementation" %>
<%@page import = "com.educator.learnfast.models.CourseInfo" %>
<%@page import = "javax.servlet.http.HttpSession"%>
<%@page import = "com.educator.learnfast.models.UserInfo" %>
<%@page import = "javax.servlet.RequestDispatcher"%>
<% 
CourseInfo obj = new CourseInfo();
obj.setCourseName(request.getParameter("courseName"));
obj.setCourseCategory(request.getParameter("courseCategory"));
obj.setInstructorName(request.getParameter("instructorName"));
String price = request.getParameter("price");
obj.setPrice(Integer.parseInt(price));
CoursesDAOImplementation met = new CoursesDAOImplementation();
ArrayList<CourseInfo> result = new ArrayList<CourseInfo>();
result = met.displayCourses(obj);
%>
<html>
<head>
<style>
div.heading{
background-color:rgb(48,60,95);
font-size:22px;
color:rgb(242,242,242);
text-align:center;
}
div.gallery {
  margin: 100px;
  border: 2px solid rgb(153, 214, 255);
  float: left;
  width: 240px;
}

div.gallery:hover {
  border: 2px solid rgb(48,60,95);
}

div.gallery img {
  width: 100%;
  height: 30%;
}

div.desc {
	color:green;
  padding: 5px;
  text-align: center;
}
body{
background-color:rgb(245, 230, 255);
}
div.price{
color:rgb(255, 153, 0);
}
</style>
</head>
<body>
<div class = "heading"><br><h1 style = "margin:20px">LearnIndia!</h1></div>
<%
for(CourseInfo title:result){%>
<div class="gallery">
  <a  href="CourseContent?courseId=<%= title.getCourseId()%>">
    <img src="assets/images/<%= title.getCourseName() %>.jpg" alt="<%= title.getCourseName() %>" width="600" height="400">
  </a>
  <div class="desc"><strong>Course Name: <%= title.getCourseName() %><br>
  Instructor Name: <%= title.getInstructorName() %><br>
  Duration of Course: <%= title.getDurationOfCourse() %>weeks<br></div>
  <div class = "price">Price: <%= title.getPrice()%></strong></div>
</div>
<%} %>
</html>
</body>
</tbody>
</table>
