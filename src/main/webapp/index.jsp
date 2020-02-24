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
font-family:cursive;
}
body{
background-color:rgb(240, 240, 245);
}
p{
text-align:center;
color:black;
font-family:cursive;
font-size:25px;
}
div.about{
font-size:18px;
font-align:right;
font-family:cursive;
color:black;
}
</style>
</head>
<body>
<div class = "heading">
<h1>LearnIndia!</h1>
<%
UserInfo uind = new UserInfo();
uind.setUserId(-1);
session.setAttribute("obj", uind);
%>
<a href ="http://localhost:8090/learnindia-web/SearchCourses.jsp">ExploreCourses</a>
<div class="name">
<a href = "Signup.jsp">Signup</a>
<a href = "Login.jsp">Login</a></div>
</div>
<p><strong>About us</strong></p>
<div class = "about"><p>LearnIndia is an online learning platform through which we are enhancing your learnig skill</p></div>
<img src="assets/images/background1.jpg" width="480" height="auto">
</body>
</html>