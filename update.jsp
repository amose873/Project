<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
        int a=Integer.parseInt(request.getParameter("pid"));
        %>
        <%@ include file="userhome.jsp"%>
        <div class="container m-5">
            <div class="row">
                <div class="col-sm-5">
                <form action="doupdate.jsp">
                    <div class="mb-2">
                    <input type="text" name="pno" value="<%=a%>" class="form-control" placeholder="Product no">
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
                        <button type="submit" class="btn btn-danger">Update</button>
                    </div>
                </form>
                </div>
            </div>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>