<%@ page import="db.DAO" %>
<%
String phone=request.getParameter("phone");
String pwd=request.getParameter("pwd");
DAO dao=new DAO();
if(dao.dologin(phone,pwd)){
    session.setAttribute("phone",phone);
    response.sendRedirect("login.jsp?msg=logged In");  
}
%>