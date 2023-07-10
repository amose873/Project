<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <style>
            .a{
                margin-left:5;
            }
        </style>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <div class="container m-5">
            <div class="row">
                <div class="col-sm-5">
                    <img src="images/l1.jpg"  width="450" height="70" class="img-thumbnail">
                </div>
                <div class="col-sm-7">
                    <form action="home.jsp">
                        <h2>Login</h2>
                        <div class="m-2">
                            <input type="text" name="phone" id="uname" placeholder="Phone Number">
                        </div>
                        <div class="m-2">
                            <input type="password" name="pwd" id="pwd" placeholder="Password">
                        </div>
                        <div>
                            <button class="btn btn-danger">Sign in</button>
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

            </div>
        </div>
        <%@ include file="footer.jsp" %>
    </body>