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
<meta charset="UTF-8">
<style>
div.heading{
background-color:rgb(48,60,95);
font-size:22px;
color:rgb(242,242,242);
text-align:center;
}
div.gallery {
  margin: 80px;
  padding: 0.1px;
  border: 2px solid rgb(230, 230, 230);
  float: left;
  width: 270px;
  height: 350px;
  shadow: 10px 10px 5px grey;
}

div.gallery:hover {
  border: 2px solid rgb(48,60,95);
  opacity:0.5;
}

div.gallery img {
  width: 100%;
  height: 50%;
}

div.title {
	color:black;
	font-family: serif;
	font-size: 20px;
  padding: 5px;
  text-align: center;
}
div.det{
	color:brack;
	font-size:16px;
}
body{
background-color:white;
}
div.price{
color:black;
}
</style>
</head>
<body>
<div class = "heading"><br><h1 style = "margin:20px">LearnIndia!</h1></div>
<%
for(CourseInfo title:result){
System.out.println(title.getCourseName());%>
<div class="gallery">
  <a  href="ContentInfoServlet?courseId=<%= title.getCourseId()%>">
    <img src="assets/images/<%= title.getCourseId() %>.jpg" alt="<%= title.getCourseName() %>" width="600" height="400">
  </a><br><br>
  <div class="title"><strong><%= title.getCourseName() %></strong><br><br></div>
 <div class="det">Instructor Name: <%= title.getInstructorName() %><br><br>
  Duration: <%= title.getDurationOfCourse() %>weeks<br></div>
 <br><strong><div class = "price">Price: <%= title.getPrice()%></strong></div>
</div>
<%} %>
</html>
</body>
</tbody>
</table>
