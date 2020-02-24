<html>
<style>
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
<body>
<h2>Learning Platform</h2>
<h3>Course Registration</h3>
<form action = "next.jsp">
Enter Name : <input type = "text" name = "name"
placeholder = "Enter Name" required autofocus/>
<br/>
Enter Email : <input type = "email" name = "email" required>
<br/>
Enter Password: <input type = "password" name = "password" required>
<br/>
Enter Date of Birth : <input type  = "date" date = "dob"/>
<br/>
Enter no of tickets: <input type = "number" name = "no_of_tickets" min = "1" max = "5"/>
<br/>
<button type = "submit" class = "button" >Submit</button>
</form>
</body>
</html>