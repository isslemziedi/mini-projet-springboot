<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-icon" href="images/cni.jpg" >
    <link rel="stylesheet" href="../../../resources/static/css/trainers.css">
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

<!--  cards : start -->

<div class="container py-1">
    <div class="row row-cols-1 row-cols-md-3 g-5 py-4">

        <div class="col">
            <div class="card">
                <img src="../images/angular.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Angular</h5>
                    <p class="card-text">est un framework web open-source de Google pour creer des applications web dynamiques</p>
                    <button class="btn btn-primary" style="font-size: small; background-color: #3E6074">Details</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/springboot.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Spring Boot</h5>
                    <p class="card-text">est un framework Java qui simplifie le dEveloppement d'applications en offrant une configuration par dEfaut</p>
                    <button class="btn btn-primary" style="font-size: small; background-color: #3E6074">Details</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/python.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Python</h5>
                    <p class="card-text"> est un langage de programmation polyvalent,allant du developpement web a l'AI</p>
                    <button class="btn btn-primary" style="font-size: small; background-color: #3E6074">Details</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/android.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Android</h5>
                    <p class="card-text">est un systeme d'exploitation mobile de Google, utilise pour creer des applications avec Java ou Kotlin</p>
                    <button class="btn btn-primary" style="font-size: small; background-color: #3E6074">Details</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/flutter.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Flutter</h5>
                    <p class="card-text">est un framework open-source de Google pour creer des applications en utilisant le langage Dart</p>
                    <button class="btn btn-primary" style="font-size: small; background-color: #3E6074">Details</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/java.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Java</h5>
                    <p class="card-text">est un langage de programmation polyvalent et populaire,pour sa fiabilite et sa programmation orientee objet</p>
                    <button class="btn btn-primary" style="font-size: small; background-color: #3E6074">Details</button>
                </div>
            </div>
        </div>


    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<!-- end cards -->
<!-- end cards -->

<!--  cards : start -->
<!-- components end -->
</body>
</html>