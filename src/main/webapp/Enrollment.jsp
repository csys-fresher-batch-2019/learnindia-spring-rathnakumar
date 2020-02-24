<%@page import = "javax.servlet.RequestDispatcher" %>
<%@page import = "javax.servlet.http.HttpServletRequest"%>
<%@page import = "javax.servlet.http.HttpServletResponse"%>
<%@page import = "com.educator.learnfast.models.UserInfo"%>
<%@page import = "javax.servlet.http.HttpSession" %>
<% int courseId = Integer.parseInt(request.getParameter("id").toString());
UserInfo ui = new UserInfo();
ui = (UserInfo)session.getAttribute("obj");
if(ui.getUserId()>0){
	int id = ui.getUserId();
	String userId = String.valueOf(id);
	System.out.println("id:"+userId);
	request.setAttribute("userId", userId);
	RequestDispatcher rd = request.getRequestDispatcher("Enrollment");
	rd.forward(request, response);
	
}
else{
	RequestDispatcher rd1 = request.getRequestDispatcher("Signup.jsp");
	rd1.forward(request, response);
}%>



