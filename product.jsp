<%@ page import="db.DAO,beans.Product,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@ include file="userhome.jsp"%>
        <div class="container m-5">
            <div class="row">
                <div class="col-sm-5">
                <form action="add.jsp">
                    <div class="mb-2">
                    <input type="text" name="pno" class="form-control" placeholder="Product no">
                    </div>
                    <div class="mb-2">
                    <input type="text" name="pname" class="form-control" placeholder="Product name">
                    </div>
                    <div class="mb-2">
                    <input type="text" name="pprice" class="form-control" placeholder="Product price">
                    </div>
                    <div class="mb-2">
                    <input type="text" name="discount" class="form-control" placeholder="discount">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-danger">ADD</button>
                    </div>
                    <div>
                        <%
                            String msg=request.getParameter("msg");
                            if(msg!=null){
                                out.println(msg);
                            }
                        %>
                    </div>


                </form>
                </div>
                <div class="col-sm-7">
                    <table class="table table-striped table-hover">
                        <thead>
                            <th>Pno</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Discount</th>
                        </thead>
                        <%
                        DAO dao=new DAO();
                        ArrayList<Product> product=dao.getProduct();
                        for(Product p:product){
                            out.println("<tr>");
                                out.println("<td>");
                                out.println(p.getpno());
                            out.println("</td>");
                            out.println("<td>");
                                out.println(p.getpname());
                            out.println("</td>");
                            out.println("<td>");
                                out.println(p.getpprice());
                            out.println("</td>");
                            out.println("<td>");
                                out.println(p.getdiscount());
                            out.println("</td>");
                            out.println("<td>");
                            %>
                            <a href="delete.jsp?pid=<%=p.getpno()%>" class="btn btn-danger">Delete</a>
                            <a href="update.jsp?pid=<%=p.getpno()%>" class="btn btn-danger">Update</a>
                            <%
                            
                                out.println("</td>");
                            out.println("</tr>");
                        }
                        %>
                    </table>    
                </div>
            
            </div>
        </div>
        <%@ include file="footer.jsp" %>
    </body>