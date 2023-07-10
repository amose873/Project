<%@ page import="db.DAO" %>
<%
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
DAO dao=new DAO();
if(dao.doreg(name,phone,email,pwd)){

  response.sendRedirect("registration.jsp?msg=Registration is Successful");  

}
%>


