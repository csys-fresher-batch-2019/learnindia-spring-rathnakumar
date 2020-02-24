<!DOCTYPE html>
<html>
<body>
<style>
h1{
color:rgb(242,242,242);
text-align:center;
}
div.heading{
background-color:rgb(48,60,95);
font-size:22px;
}
</style>
<%String str = request.getParameter("week");
String strnew = str.replace(" ","");
String strnew1 = strnew.replace(":","");%>
<div class = "heading"><br><h1 style = "margin:20px">LearnIndia!</h1></div>
<video width="1280" height="540" controls>
  <source src="assets/<%= strnew1%>.mp4" type="video/mp4">
</video>

</body>
</html>