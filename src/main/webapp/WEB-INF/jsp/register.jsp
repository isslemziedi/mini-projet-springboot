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

    <title>Register</title>
</head>
<body class="d-flex align-items-center justify-content-center bg-light">
<!-- register form card  -->
<div class="card registration-form-card col-6 bg-transparent border-0">
    <div class="card-body">
        <h1 class="form-header card-title mb-3">
            <i class="fa fa-pen-to-square"></i> Register
        </h1>

        <!-- display message mismatch -->
        <c:if test="${not empty requestScope.passwordMismatch}">
            <div class="alert alert-danger text-center border border-danger">
                <b>${requestScope.passwordMismatch}</b>
            </div>
        </c:if>
        <!-- end display message mismatch  -->

        <!-- display message email domain wrong-->
        <c:if test="${not empty requestScope.wrongemail}">
            <div class="alert alert-danger text-center border border-danger">
                <b>${requestScope.wrongemail}</b>
            </div>
        </c:if>

        <!-- display message success -->
        <c:if test="${not empty requestScope.success}">
            <div class="alert alert-success text-center border border-success">
                <b>${requestScope.success}</b>
            </div>
        </c:if>
        <!-- end display message success -->

        <form:form action="/register" class="reg-form" modelAttribute="registerUser">
            <div class="row">
                <div class="form-group col">
                    <form:input type="text" path="first_name" class="form-control form-control-lg" placeholder="Enter First Name" />
                    <form:errors path="first_name" class="text-white "  style="background-color: #E4B485;"/>
                </div>
                <div class="form-group col">
                    <form:input type="text" path="last_name" class="form-control form-control-lg" placeholder="Enter Last Name" />
                    <form:errors path="last_name" class="text-white " style="background-color:  #E4B485;"/>
                </div>
            </div>
            <div class="form-group col">
                <form:input type="email" path="email" class="form-control form-control-lg" placeholder="Enter Email" />
                <form:errors path="email" class="text-white " style="background-color:  #E4B485;"/>
            </div>
            <div class="row">
                <div class="form-group col">
                    <form:input type="password" path="password" class="form-control form-control-lg" placeholder="Enter password" />
                    <form:errors path="password" class="text-white " style="background-color:  #E4B485;"/>
                </div>
                <div class="form-group col">
                    <input type="password" name="confirm_password" class="form-control form-control-lg" placeholder="Confirm password" />
                    <small class="text-white " style="background-color:  #E4B485;" >${confirm_pass}</small>
                </div>
            </div>
            <div class="form-group col">
                <button class="btn btn-md">Register</button>
            </div>
        </form:form>
        <p class="card-text text-white my-2">
            Already have an account?<span class="ms-2 text-warning"><a href="/login" class="btn btn-sm " style="color:#EDCBA9;">Login</a></span>
        </p>
        <small class="text-warning">
            <i class="fa fa-arrow-alt-circle-left" style="color:#EDCBA9;"></i><a href="/" class="btn btn-sm " style="color:#EDCBA9;">Back</a>
        </small>
    </div>
</div>
</body>
</html>

