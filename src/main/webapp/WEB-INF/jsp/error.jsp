<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&family=Roboto:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/fontawesome/fontawesome.css">
    <style>
        *{
            box-sizing: border-box;
        }
        body{
            font-family: Comfortaa;
            height: 100vh;
            background-color: rgb(211,217,226);
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card{
            box-shadow: 0px 3px 6px #E4B485;
            width: 550px;
            height: auto;
            padding: 15px;
            background-color: white;
            border-radius: 7px;
        }
        .card .card-text{
            font-size: 16px;
        }
    </style>
    <title>Error</title>
</head>
<body class="d-flex align-items-center justify-content-center bg-light">
<div class="card col-4 alert alert-danger border border-danger " style="color: #E4B485; background-color: #f8eedf">
    <h2 class="card-title">
        <i class="fa fa-window-close me-2"></i> Errors:
    </h2>
    <hr style="color: #3E6074; border: 1px solid;">
    <div class="card-body">
        <p class="card-text">
            <!-- Display Message -->
            <c:if test="${requestScope.error != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.error}</b>
                </div>
            </c:if>
        <!-- End Of Display Message -->
        </p>
        <hr style="color: #3E6074; border: 1px solid;margin-bottom: 20px;">
        <a href="/login" class="btn btn-sm " style="background-color: #E4B485; color: white; width:20px; text-decoration: none;border: 1px solid #3e352c;padding: 5px;width: 100px;box-shadow: 0px 3px 6px rgb(0,14,53);border-radius: 5px;">
            <i class="fa fa-arrow-alt-circle-left me-1"></i> Back
        </a>
        <br>
        <br>
    </div>
</div>
</body>
</html>