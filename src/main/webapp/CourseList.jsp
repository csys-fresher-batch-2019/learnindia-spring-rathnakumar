<%@page import = "com.educator.learnfast.models.UserInfo"%>
<%@page import = "javax.servlet.http.HttpSession" %>
<%@page import="java.util.ArrayList"%> 
<%@page import = "com.educator.learnfast.models.CourseHistory" %>
<html>
<head>
<style>
.heading a{
text-decoration:none;
text-align:center;
padding:14px 16px;
color:white;
font-family:verdana;
font-size:20px;
margin:auto;
text-align:center;
}

h1{
color:rgb(242,242,242);
text-align:center;
}
div.heading{
background-color:rgb(18,40,90);
font-size:22px;
margin: 20px 12px 15px 18px;
color:white;
}
h2{
font-family:verdana;
margin:0px;
padding:4px;
color:white;
text-align:center;
font-size:20px;
width:1200px;
}
div.name{
text-align:right;
}
body{
background-color:rgb(240, 240, 245);
}
table,th,td{
  border: 1px solid black;
}
th,td{
padding:5px;
text-align:center;
}

</style>
</head>
<body>
<div class = "heading">
<h1>LearnIndia!</h1>
<%UserInfo in = new UserInfo();
in =(UserInfo)session.getAttribute("obj");
%>
<a href ="http://localhost:8090/learnindia-web/SearchCourses.jsp">ExploreCourses</a>
<a href = "http://localhost:8090/learnindia-web/CourseList?id=<%= in.getUserId()%>">YourCourseList</a>
<a href = "CourseHistoryServlet?id=<%= in.getUserId()%>" >ViewCourseHistory</a>
<div class="name">
<b>Welcome <%= in.getUserName()%></b>
<a href = "Logout" >LogOut</a></div>
</div>
<center><table border = "1" style="width:100%"><thead><tr>
<th>CourseName</th>
<th>InstructorName</th>
<th>EnrolledDate</th>
<th>EndingDate</th></tr></thead><tbody>
<%ArrayList<CourseHistory> res = new ArrayList<CourseHistory>();
res = (ArrayList<CourseHistory>)request.getAttribute("list");
for(CourseHistory loin :res){%>
<tr><td><a href = "VisitCourse?courseId=<%= loin.getCourseId()%>"><%= loin.getCourseName() %></a></td>
<td><%= loin.getInstructorName() %></td>
<td><%= loin.getEnrolled_date() %></td>
<td><%= loin.getEnding_date() %></td></tr>
<%} %>
</tbody></table></center>
</body>
</html>