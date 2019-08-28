<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuCocinero.aspx.cs" Inherits="Vista.MenuCocinero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>food/health</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">food / health</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <!-- Opciones del navbar -->
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contactanos</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Listar
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="ListarUsuarios.aspx">Usuarios</a>
                            <a class="dropdown-item" href="ListarEmpleados.aspx">Cocineros</a>
                            <a class="dropdown-item" href="ListarClientes.aspx">Clientes</a>
                        </div>
                     </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Registrar.aspx">Registrar</a>
                    </li>
                </ul>
                
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar..." aria-label="Buscar"/>
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
                
            </div>
        </nav>
    </header>
    <!-- Carusel -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://software-carpentry.org/files/2012/05/event_histogram.png" class="d-block w-100" height="500" alt="..."/>
                        </div>
                        <div class="carousel-item">
                            <img src="http://orienvis.nic.in/WriteReadData/links/Climate-385836405.jpg" class="d-block w-100" height="500" alt="..."/>
                        </div>
                        <div class="carousel-item">
                            <img src="http://www.metafor-project.org/lib/exe/fetch.php/tips:bootstrapping_parametric_mu.png" class="d-block w-100" height="500" alt="..."/>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Contenido -->
    <div class="container" style="padding-top:50px; padding-bottom:50px;">
        <div class="row">           
            <div class="card col-sm-12 col-md-4 col-12">
                <img src="https://www.dvoracky.cz/images/fotogalerie/restaurace/jidlo-salat.jpg" class="card-img-top" height="230" alt="..."/>
                <div class="card-body">
                    <h5 class="card-title">Paquete Estándar</h5>
                    <p class="card-text">Acá podras seleccionar el paquete estándar que tenemos reservados para 
                        nuestros clientes con gustos simples pero con grandes aspiraciones saludables para su alimentación.</p>
                    <a href="#" class="btn btn-primary">Haz click aquí!</a>
                </div>
            </div>
            <div class="card col-sm-12 col-md-4 col-12">
                <img src="http://www.cateringalimentos.com.ar/img/menu-estandar.jpg" class="card-img-top" height="230" alt="..."/>
                <div class="card-body">
                    <h5 class="card-title">Paquete Especial</h5>
                    <p class="card-text">Este paquete está enfocado en nuestros clientes con gustos sofisticados, 
                        con un balance perfecto entre el gusto y la salud alimenticia.</p>
                    <a href="#" class="btn btn-primary">Haz click aquí!</a>
                </div>
            </div>
            <div class="card col-sm-12 col-md-4 col-12">
                <img src="https://www.przyslijprzepis.pl/uploads/media/recipe/0003/18/a9b2e8ee0f33a8dd239710a3bfa905e67dd7f71a.jpeg" class="card-img-top" height="230" alt="..."/>
                <div class="card-body">
                    <h5 class="card-title">Paquete Personalizado</h5>
                    <p class="card-text">Sigue las opiniones de nuestros nutricionistas especializados para seguir la 
                        receta que tanto deseas para buscar el equilibrio que tu cuerpo necesita.</p>
                    <a href="#" class="btn btn-primary">Haz click aquí!</a>
                </div>
            </div>            
        </div>    
    </div>
        
    <!-- Footer -->
    <footer class="page-footer font-small bg-dark text-white">
        <div class="container text-center text-md-left">
            <div class="row">
                <div class="col-md-4 mx-auto">
                    <!-- Contexto inicial -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">food / health</h5>
                    <p>El restauante donde tu podrás encontrar tu comida ideal al mejor precio que favorece a tu gusto y a tu cuerpo.</p>

                </div>
         
        <!-- Botones de redes sociales -->
        <ul class="list-unstyled list-inline text-center">
            <li class="list-inline-item">
                <a class="btn-floating btn-fb mx-1">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png" width="50" height="50"/>
                </a>
            </li>
            <li class="list-inline-item">
                <a class="btn-floating btn-tw mx-1">
                    <img src="https://www.investopedia.com/thmb/47bnydwzJgOYZEjqgt3sCMH6NI4=/640x640/filters:no_upscale():max_bytes(150000):strip_icc()/Instagramlogo-5c79a761c9e77c0001f57c0b.png" width="50" height="50"/>
                </a>
            </li>
            <li class="list-inline-item">
                <a class="btn-floating btn-gplus mx-1">
                    <img src="https://acousticsolutionsarg.com/wp-content/uploads/2018/01/Icono-Twitter.png" width="50" height="50"/>
                </a>
            </li>
            <li class="list-inline-item">
                <a class="btn-floating btn-li mx-1">
                    <img src="https://images.vexels.com/media/users/3/137399/isolated/preview/47c9900ae893cbed1e1599ab9c8bcb18-pinterest-icon-logo-by-vexels.png" width="50" height="50"/>
                </a>
            </li>
        </ul>

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2019 Copyright: <b>SVC Software</b></div>

</footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>    
</body>
</html>
