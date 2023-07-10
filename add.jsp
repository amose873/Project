<%@ page import="db.DAO" %>
<%
int a=Integer.parseInt(request.getParameter("pno"));
String b=request.getParameter("pname");
float c=Float.parseFloat(request.getParameter("pprice"));
String d=request.getParameter("discount");
DAO dao=new DAO();
if(dao.doadd(a,b,c,d)){
    response.sendRedirect("product.jsp?msg=Transaction Successful");
}
%>

