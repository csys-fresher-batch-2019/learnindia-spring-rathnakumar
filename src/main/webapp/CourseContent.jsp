<%@page import = "javax.servlet.RequestDispatcher" %>
<%@page import="java.util.ArrayList"%> 
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import = "com.educator.learnfast.models.UserInfo"%>
<%@page import= "com.educator.learnfast.models.ContentInfo" %>
<html>
<head>
<style>
h1{
color:rgb(242,242,242);
text-align:center;
}
div.heading{
background-color:rgb(48,60,95);
font-size:22px;
}
body{
background-color:rgb(240, 240, 245);
}
.button{
color:MediumSeaGreen;
}
p{
font-size:22px;
margin:20px;
}
.button {
  background-color: white;
  border: 2px solid rgb(18,40,90);
  color: black;
  padding: 8px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
.button:hover{
background-color:rgb(18,40,90);
color:white;
}
a{
color:red;
text-decoration:none;
}
</style>
</head>
<body>
<div class = "heading"><br><h1 style = "margin:20px">LearnIndia!</h1></div>
<%ArrayList<ContentInfo> s = (ArrayList<ContentInfo>)request.getAttribute("content");
for(ContentInfo sin:s){
	%>
	<p>Chapter <%= sin.getChapterNo()%>: <%= sin.getCourseContent()%></p>	
<%} %>
<%
int str = Integer.parseInt(request.getParameter("courseId").toString());
HttpSession sessioncourse = request.getSession();
sessioncourse.setAttribute("courseId",str);%>
<%UserInfo in = new UserInfo();
in = (UserInfo)session.getAttribute("obj");
if(in.getUserId()>0){%>
<button class = "button"><a href= "Enrollment.jsp?id=<%=str%>"> Enroll</a></button><%} %>
</body>
</html>