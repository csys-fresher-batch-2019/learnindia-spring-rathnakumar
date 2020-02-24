<html>
<style>
div.heading{
background-color:rgb(18,40,90);
font-size:22px;
margin: 20px 12px 15px 18px;
color:white;
}
body{
background-color:rgb(240, 240, 245);
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
p{
color:red;
}
</style>
<body>
<div class="heading"><center><br><br><h1>LearnIndia!</h1></center></div>
<center><h2>Login</h2>
<form action = "Login" method = "post">
<b>Enter Email</b><br>
<input type = "email" name = "email" required autofocus>
<br><br>
<b>Enter Password</b><br>
<input type = "password" name = "password" required>
<br><br>
<input type = "radio" name = "id" value = "0" required>Login as User
<input type = "radio" name = "id" value = "1" required>Login as Instructor
<br><br>
<button class = "button" type = "submit">Login</button>
</form>
<%String str = (String)request.getParameter("msg");
if(str!=null){ %>
<center><p><%= str%></p></center>
<%} %></center>
</body>
</html>