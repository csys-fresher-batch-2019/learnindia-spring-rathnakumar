<%@page import = "com.educator.learnfast.models.UserInfo"%>
<%@page import = "javax.servlet.http.HttpSession" %>
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
</body>
</html>