<!DOCTYPE html>
<html>
<style>
div.heading{
background-color:rgb(48,60,95);
font-size:22px;
color:rgb(242,242,242);
text-align:center;
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
<body>
<div class = "heading"><br><h1 style = "margin:20px">LearnIndia!</h1></div>
<center><h1>Search Course</h1>
<form action = "SearchList.jsp">
Enter Course Name:<input type = "text" name="courseName"  value ="" />
<br><br>
Enter Instructor Name:<input type = "text" name = "instructorName" value="" />
<br><br>
Select Course Category
<select name = "courseCategory">
<option value = "">ALL</option>
<option value = "Businees">Businees</option>
<option value = "Arts">Arts</option>
<option value = "Science">Science</option>
<option value = "Engineering">Engineering</option>
<option value = "Maths">Mathametics</option>
<option value = "Personality Development">Personality Development</option>
<option value = "Finance">Finance</option>
</select><br><br>
<input type="radio" name = "price" value = "0" required/>Free Courses Only
<input type="radio" name = "price" value = "100" required/>All Courses
<br><br>
<button type = "submit" class = "button">Search</button></center>
</form>
</body>
</html>