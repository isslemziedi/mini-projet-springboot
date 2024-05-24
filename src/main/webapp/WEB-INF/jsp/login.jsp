<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&family=Roboto:wght@300;400&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="css/fontawesome/css/all.css">
        <link rel="stylesheet" href="css/default.css">
        <title>Login</title>
    </head>
    <body class="d-flex align-items-center justify-content-center bg-light">
    <!-- login form card  -->
    <div class="card login-form-card col-4 bg-transparent border-0">
        <div class="card-body">
            <h1 class="form-header card-title mb-3">
                <i class="fa fa-user"></i>  Login
            </h1>


            <!-- Display Message -->
            <c:if test="${requestScope.success != null}">
                <div class="alert alert-success text-center border border-success">
                    <b>${requestScope.success}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->

            <!-- display message mismatch -->
            <c:if test="${not empty requestScope.error}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.error}</b>
                </div>
            </c:if>
            <!-- end display message mismatch  -->

            <!-- display message mismatch -->
            <c:if test="${logged_out != null}">
                <div class="alert alert-info text-center border border-info">
                    <b>${logged_out}</b>
                </div>
            </c:if>
            <!-- end display message mismatch  -->


            <form action="/login" method="POST" class="login-form">
                <div class="form-group col">
                    <input type="email" path="email" name="email" class="form-control form-control-lg" placeholder="Enter Email" />
                </div>
                <div class="form-group col">
                    <input type="password" path="password" name="password" class="form-control form-control-lg" placeholder="Enter password"/>
                </div>

                <div class="form-group col">
                    <input type="hidden" name="_token" value="${token}" />
                </div>


                <div class="form-group col col-4">
                    <button class="btn btn-md ">Login</button>
                </div>
            </form>
            <p class="card-text text-white my-2 ">
                Dont have an account?<span class="ms-2 text-warning "><a href="/register" class="btn btn-sm " style="color:#EDCBA9;">Sign up</a></span>
            </p>
            <small class="text-warning">
                <i class="fa fa-arrow-alt-circle-left" style="color:#EDCBA9;"></i><a href="/" class="btn btn-sm " style="color:#EDCBA9;">Back</a>
            </small>
        </div>
    </div>
    </body>
    </html>