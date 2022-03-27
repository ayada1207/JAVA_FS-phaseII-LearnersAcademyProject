<%	
String username1 = request.getParameter("username");
String password = request.getParameter("pwd");

if(("admin").equals(username1) && ("admin").equals(password)){
	response.sendRedirect("adminHome.jsp");
}else{
	response.sendRedirect("errorAdminLogin.html");
}

%>