<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrincipalPage.aspx.cs" Inherits="Vista.PrincipalPage" %>
<!doctype html>
  <html lang="es">
    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Food/ health</a>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link" href="#">Servicios <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Acerca de Nosotros</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contac.html">Contactanos</a>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <a class="btn btn-primary" href="Login.aspx" role="button">Login</a>
      </form>
    </div>
  </nav>

 <!-- Carrucel--> 
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel" style="width: 98%; height: 700px; margin-left: 10px; margin-top: 10px">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://www.ecestaticos.com/imagestatic/clipping/1ed/a44/1eda44daf5f75ca868b7eb9bf93396e4/por-que-el-desayuno-es-la-comida-mas-importante-si-quieres-estar-delgado.jpg?mtime=1500455115" class="d-block w-100" alt="..."  style="width: 98%; height: 600px">
    </div>
    <div class="carousel-item">
      <img src="https://www.tecnohotelnews.com/wp-content/uploads/2018/04/siete-claves-para-ofrecer-platos-saludables-atractivos-a-los-comensales.jpg" class="d-block w-100" alt="..." style="width: 98%; height: 600px" >
    </div>
    <div class="carousel-item">
      <img src="https://www.fensberlin2015.org/wp-content/uploads/2017/11/comida-saludable-2.jpg" class="d-block w-100" alt="..." style="width: 98%; height: 600px">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- card  para mostrar los paquetes -->
<div>
  <div class="card" style="width: 18rem;float: left; margin-left: 100px">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Logo_TVE-1.svg/800px-Logo_TVE-1.svg.png" class="card-img-top" alt="..." style="width: 250px; height: 250px;">
  <div class="card-body">
    <h5 class="card-title">Plan nutricional 1</h5>
    <p class="card-text">...............</p>
    <a href="#" class="btn btn-primary">Mas información</a>
  </div>
</div >
 <div class="card" style="width: 18rem; float: left; margin-left: 100px">
  <img src="https://www.camilos.es/wp-content/uploads/2018/03/logo_tve-2-750699.png" class="card-img-top" alt="..." style="width: 250px; height: 250px;">
  <div class="card-body">
    <h5 class="card-title">Plan nutricional 2</h5>
    <p class="card-text">................</p>
    <a href="#" class="btn btn-primary">Mas información</a>
  </div>
</div>
 <div class="card" style="width: 18rem;float: left; margin-left: 100px">
  <img src="https://blogs.mujerhoy.com/horoscopo-para-las-estrellas/wp-content/uploads/sites/30/2018/05/compatibilidad-numero-3-ok.jpg" class="card-img-top" alt="..." style="width: 250px; height: 250px;">
  <div class="card-body">
    <h5 class="card-title">Plan nutricional 3</h5>
    <p class="card-text">................</p>
    <a href="#" class="btn btn-primary">Mas información</a>
  </div>
</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<!-- Footer -->
<footer style="bottom: 0" class="page-footer font-small blue pt-4">
  
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="#"> Food / Health</a>
  </div>
</footer>
      
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
  </html>
