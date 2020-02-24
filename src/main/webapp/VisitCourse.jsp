<%@page import = "javax.servlet.RequestDispatcher" %>
<%@page import="java.util.ArrayList"%> 
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import = "com.educator.learnfast.models.UserInfo" %>
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
h2{
color:rgb(102, 102, 255);
font-size:22px;
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

</style>
</head>
<body>
<div class = "heading"><br><h1 style = "margin:20px">LearnIndia!</h1></div>
<%ArrayList<String> s = (ArrayList<String>)request.getAttribute("contentvid");
for(String sin:s){
	String val = sin.trim();
	%>
<h2><a href = "WatchVideo.jsp?week=<%= val%>"><%= sin%></a></h2>
<%}
UserInfo ui = new UserInfo();
ui = (UserInfo)session.getAttribute("obj");
System.out.println(ui.getUserId());
String cid = (String)request.getParameter("courseId");
int courseId = Integer.parseInt(cid);
%>
<button class = "button"><a href= "WithdrawCourse?courseId=<%= courseId%>">UnEnroll`</a></button>
</body>
</html>