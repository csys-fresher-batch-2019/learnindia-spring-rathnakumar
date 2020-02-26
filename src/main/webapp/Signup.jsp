<!DOCTYPE html>
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
 <script> 
          
            function checkPassword(form) { 
                password1 = form.password.value; 
                password2 = form.confirmpass.value; 
                if (password1 != password2) { 
                    alert ("\nPassword did not match: Please try again...");
                    return false; 
                } 
                else
                	return true;
            } 
         
        </script> 
<body>
<div class="heading"><center><br><br><h1>LearnIndia!</h1></center></div>
<center><h2>Create Account</h2>
<form action = "CreateAccount" method = "post" onSubmit = "return checkPassword(this)">
<b>Enter Your Name</b><br>
 <input type = "text" name = "first_name" placeholder = "First Name" required/>
<input type = "text" name = "last_name" placeholder  = "Last Name">
<br><br>
<b>Enter Email</b><br>
<input type = "email" name = "email" required>
<br><br>
<b>Enter Password</b><br>
<input type = "password" name = "password" required pattern=".{8,}" title = "Must contain atleast 8 characters"><p style="color:red">(*password must contain minimum 8 characters)</p>
<br>
<b>Enter Confirm Password</b><br>
<input type = "password" name = "confirmpass" placeholder = "Re-enter the password" required>
<br><br>
<button class = "button" type = "submit">Submit</button>
</form>
<%String str =(String) request.getParameter("msg");
if(str!=null){%>
<center><p><%= str %></p></center></center>
<%} %>
</body></html>