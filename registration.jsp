 
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <div class="container m-5" >
            <div class="row">
                <div class="col-sm-5">
                    <div>
                        <img src="images/reg.jpg" class="img-thumbnail">
                    </div>
                </div>
                <div class="col-sm-4 container ">
                    <h1>Registration</h1>
                    <form action="regi.jsp" method="post" onsubmit="return validation()">
                        <div class="mb-2 " >
                            <input type="text" class="form-control" name="uname" id="uname" placeholder="Name">
                        </div>
                        <div class="mb-2" >
                            <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone Number">
                        </div>
                        <div class="mb-2" >
                            <input type="text" class="form-control" name="email" id="email" placeholder="Email">
                        </div>
                        <div class="mb-2" >
                            <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Password">
                        </div>
                        <div class="mb-2" >
                            <input type="password" class="form-control" name="cpwd" id="cpwd" placeholder="Confirm Password">
                        </div>
                        <div>
                            <button class="btn btn-danger" type="submit">Register</button>
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
                <div class="col-sm-3"></div>
            </div>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>
<script>
    function validation(){
        let name=document.getElementById("uname").value;
        let phone=document.getElementById("phone").value;
        let email=document.getElementById("email").value;
        let pwd=document.getElementById("pwd").value;
        let cpwd=document.getElementById("cpwd").value;
        if(name.length==0){
            alert("Name should not be empty");
            return false;
        }
        else if(phone.length==0){
            alert("phone should not be empty");
            return false;
        }
        else if(email.length==0){
            alert("email should not be empty");
            return false;
        }
        else if(pwd.length==0){
            alert("Password should not be empty");
            return false;
        }
        else if(cpwd.length==0){
            alert("Confirm password should not be empty");
            return false;
        }
        else if(pwd!=cpwd){
            alert("Password and confirm password should be same");
            return false;
        }
        return true;
    }
</script>