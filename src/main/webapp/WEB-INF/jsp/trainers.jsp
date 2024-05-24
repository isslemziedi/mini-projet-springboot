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
                <img src="../images/teacher 1.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Sofiene Rihanni</h5>
                    <p class="card-text">Devloppement Web</p>
                </div>
                <div class="mb-4 d-flex justify-content-around align-items-center">
                    <a href="https://www.linkedin.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-linkedin fa-lg" style="color: inherit;"></i>
                    </a>

                    <a href="https://github.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-github fa-lg" style="color: inherit;"></i>
                    </a>
                    <a href="https://twitter.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-twitter fa-lg"  style="color: inherit;"></i>
                    </a>
                    <button class="btn btn-primary" style="background-color: #3E6074">Contact me</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/teacher 2.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"> Karim Hmedi</h5>
                    <p class="card-text">Excel Niveau Avancée</p>
                </div>
                <div class="mb-4 d-flex justify-content-around  align-items-center">
                    <a href="https://www.linkedin.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-linkedin fa-lg" style="color: inherit;"></i>
                    </a>

                    <a href="https://github.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-github fa-lg" style="color: inherit;"></i>
                    </a>
                    <a href="https://twitter.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-twitter fa-lg"  style="color: inherit;"></i>
                    </a>
                    <button class="btn btn-primary" style="font-size: small; background-color: #3E6074">Contact me</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/teacher 3.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Leila Jaziri</h5>
                    <p class="card-text">Angular</p>
                </div>
                <div class="mb-4 d-flex justify-content-around  align-items-center">
                    <a href="https://www.linkedin.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-linkedin fa-lg" style="color: inherit;"></i>
                    </a>

                    <a href="https://github.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-github fa-lg" style="color: inherit;"></i>
                    </a>
                    <a href="https://twitter.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-twitter fa-lg"  style="color: inherit;"></i>
                    </a>
                    <button class="btn btn-primary" style="font-size: small;background-color: #3E6074">Contact me</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/teacher4.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Assma Aloui</h5>
                    <p class="card-text">Developpeur principal</p>
                </div>
                <div class="mb-4 d-flex justify-content-around  align-items-center">
                    <a href="https://www.linkedin.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-linkedin fa-lg" style="color: inherit;"></i>
                    </a>

                    <a href="https://github.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-github fa-lg" style="color: inherit;"></i>
                    </a>
                    <a href="https://twitter.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-twitter fa-lg"  style="color: inherit;"></i>
                    </a>
                    <button class="btn btn-primary" style="font-size: small;background-color: #3E6074">Contact me</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/teacher 5.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">FadhelBen Ammar</h5>
                    <p class="card-text">React JS</p>
                </div>
                <div class="mb-4 d-flex justify-content-around  align-items-center">
                    <a href="https://www.linkedin.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-linkedin fa-lg" style="color: inherit;"></i>
                    </a>

                    <a href="https://github.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-github fa-lg" style="color: inherit;"></i>
                    </a>
                    <a href="https://twitter.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-twitter fa-lg"  style="color: inherit;"></i>
                    </a>
                    <button class="btn btn-primary" style="font-size: small;background-color: #3E6074">Contact me</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="../images/teacher 6.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Houda Saadi</h5>
                    <p class="card-text">Django</p>
                </div>
                <div class="mb-4 d-flex justify-content-around  align-items-center">
                    <a href="https://www.linkedin.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-linkedin fa-lg" style="color: inherit;"></i>
                    </a>

                    <a href="https://github.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-github fa-lg" style="color: inherit;"></i>
                    </a>
                    <a href="https://twitter.com/" style="color: #3E6074; text-decoration: none;" onmouseover="this.style.color='#F1D7BD';" onmouseout="this.style.color='#3E6074';">
                        <i class="fab fa-twitter fa-lg"  style="color: inherit;"></i>
                    </a>
                    <button class="btn btn-primary" style="font-size: small;background-color: #3E6074" >Contact me</button>
                </div>
            </div>
        </div>


    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<!-- end cards -->

<!--  cards : start -->
<!-- components end -->
</body>
</html>