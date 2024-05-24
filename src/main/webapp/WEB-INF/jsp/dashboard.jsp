<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&family=Roboto:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" crossorigin="anonymous" />
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../css/fontawesome/css/all.css">
    <script src="../js/bootstrap.bundle.js"></script>
    <title>Dashboard</title>
</head>
<body style="background-color: rgb(211,217,226);">

<!-- components start -->

        <!-- main header -->
            <c:import url="components/include/header.jsp" />

        <!-- transact_offcnvas (left)-->
            <c:import url="components/transact_offcanvas.jsp" />

        <!-- add_account_offcanvas (right)--->
            <c:import url="components/add_account_offcanvas.jsp" />


    <!-- start container -->
        <div class="container">
            <!-- display message success -->
            <c:if test="${success != null}">
                <div class="alert alert-info text-center border border-info">
                    <b>${success}</b>
                </div>
            </c:if>
            <!-- end display message success  -->

            <!-- display message error -->
            <c:if test="${error != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${error}</b>
                </div>
            </c:if>
            <!-- end display message error  -->
        </div>
    <!-- end container -->


        <c:choose>

            <c:when test="${fn:length(userAccounts) > 0  }">
                <!--  display accounts -->
                <c:import url="components/accounts_display.jsp" />
            </c:when>

            <c:otherwise>
                <!-- no_account display -->
                <c:import url="components/no_accounts_display.jsp" />
            </c:otherwise>

        </c:choose>

<!-- components end -->

<script src="../js/main.js"></script>
</body>
</html>