<%@ page import="db.DAO"%>
<%
int a=Integer.parseInt(request.getParameter("pid"));
DAO dao=new DAO();
if(dao.delete(a)){
    response.sendRedirect("product.jsp?msg=Deleted");
}
%>
