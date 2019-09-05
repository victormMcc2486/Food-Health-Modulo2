<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vista.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="icon" type="image/png" href="../icono.png" />
    <link rel="stylesheet" href="Mcss/materialize.min.css" media="screen,projection" />
    <title>Food/Health</title>

    <script></script>
</head>
<body>
    <header>
        <nav class="navbar nav-expand-lg #424242 grey darken-3 " style="position: fixed; z-index: 1000;">
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="left hide-on-med-and-down">
                <li><a href="#" style="font-size: 25px; color: white; text-decoration: none">Food / Health</a></li>
                <li><a href="#" style="color: white; text-decoration: none">Inicio</a></li>
                <li><a href="#" style="color: white; text-decoration: none">Nosotros </a></li>
                <li><a href="#" style="color: white; text-decoration: none">Contactanos</a></li>
            </ul>
            <ul class="side-nav" id="mobile-demo">
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Nosotros </a></li>
                <li><a href="#">Contactanos</a></li>
                <li><a style="margin-left: 3px" id="btnGroupDrop2" class="waves-effect waves-light btn btn-#1b5e20 green darken-4"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Iniciar Sesion</a>
                </li>
                <li><a style="margin-left: 3px" class="waves-effect waves-light btn btn-#d50000 red accent-4" href="RegistroUsuario.aspx">Registrar</a></li>

            </ul>
            <div class="btn-group right hide-on-med-and-down" role="group">
                <a style="margin-left: 3px" id="btnGroupDrop1" class="waves-effect waves-light btn btn-#1b5e20 green darken-4 "
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="float: right">Iniciar Sesion</a>
                <a style="margin-left: 3px" class="waves-effect waves-light btn btn-#d50000 red accent-4" href="RegistroUsuario.aspx">Registrar</a>

                <form runat="server">
                    <!-- Iniciar sesion -->
                    <div class="dropdown-menu p-5" aria-labelledby="btnGroupDrop1">
                        <div class="form-group">
                            <asp:TextBox ID="txtusuario" CssClass="form-control" placeholder="Usuario" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtclave" runat="server" CssClass="form-control" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnLogin" runat="server" CssClass="form-control btn btn-#1b5e20 green darken-4" Text="Ingresar" OnClick="btnLogin_Click" />
                        </div>
                    </div>
                   
                </form>
            </div>
        </nav>
    </header>
    <!-- Carusel -->
    <div class="container-fluid">
        <div class="row">
            <div class="carousel carousel-slider">
                <a class="carousel-item">
                    <img src="https://www.china-briefing.com/news/wp-content/uploads/2019/04/China-Briefing_Increasing-Awareness-and-Growing-Demand-for-Health-Food-Drive-Food-Imports.jpg"></a>
                <a class="carousel-item">
                    <img src="https://d2ebzu6go672f3.cloudfront.net/media/content/images/p3_MedDiet_W1806_gi667751254.jpg"></a>
                <a class="carousel-item">
                    <img src="https://pull03-glorybee.netdna-ssl.com/media/wysiwyg/food-for-health-header.jpg"></a>
            </div>
        </div>
    </div>

    <!-- Contenido -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                <div class="card">
                    <div class="card-image">
                        <img src="https://www.dvoracky.cz/images/fotogalerie/restaurace/jidlo-salat.jpg" />
                        <span class="card-title">Paquete Estándar</span>
                    </div>
                    <div class="card-content" style="height:auto">
                        <p>
                            Acá podras seleccionar el paquete estándar que tenemos reservados para 
                        nuestros clientes con gustos simples pero con grandes aspiraciones saludables para su alimentación.
                        </p>
                    </div>
                    <div class="card-action">
                        <a href="#">Haz click aquí</a>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                <div class="card">
                    <div class="card-image">
                        <img src="http://www.cateringalimentos.com.ar/img/menu-estandar.jpg" />
                        <span class="card-title">Paquete Especial</span>
                    </div>
                    <div class="card-content" style="height:auto">
                        <p>
                            Este paquete está enfocado en nuestros clientes con gustos sofisticados, 
                        con un balance perfecto entre el gusto y la salud alimenticia.
                        </p>
                    </div>
                    <div class="card-action">
                        <a href="#">Haz click aquí</a>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                <div class="card">
                    <div class="card-image">
                        <img src="https://www.przyslijprzepis.pl/uploads/media/recipe/0003/18/a9b2e8ee0f33a8dd239710a3bfa905e67dd7f71a.jpeg" />
                        <span class="card-title">Paquete Personalizado</span>
                    </div>
                    <div class="card-content" style="height:auto">
                        <p>
                            Sigue las opiniones de nuestros nutricionistas especializados para seguir la 
                        receta que tanto deseas para buscar el equilibrio que tu cuerpo necesita.
                        </p>
                    </div>
                    <div class="card-action">
                        <a href="#">Haz click aquí</a>
                    </div>
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
                <!-- Agrupacion de links -->
                <hr class="clearfix w-100 d-md-none" />
                <div class="col-md-2 mx-auto">
                    <!-- Links -->
                    <h5 class="text-uppercase mt-3 mb-4">Preguntas frecuentes</h5>
                    <ul class="list-unstyled">
                        <li><a href="#!">Inicio</a></li>
                        <li><a href="#!">Productos</a></li>
                        <li><a href="#!">Nosotros</a></li>
                        <li><a href="#!">Contactanos</a></li>
                    </ul>
                </div>
                <!-- Agrupacion de links -->
                <hr class="clearfix w-100 d-md-none" />
                <div class="col-md-2 mx-auto">
                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#!">Link 1</a></li>
                        <li><a href="#!">Link 2</a></li>
                        <li><a href="#!">Link 3</a></li>
                        <li><a href="#!">Link 4</a></li>
                    </ul>
                </div>
                <!-- Agrupacion de links -->
                <hr class="clearfix w-100 d-md-none" />
                <div class="col-md-2 mx-auto">
                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#!">Link 1</a></li>
                        <li><a href="#!">Link 2</a></li>
                        <li><a href="#!">Link 3</a></li>
                        <li><a href="#!">Link 4</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <hr />
        <!-- Botones de registrate -->
        <ul class="list-unstyled list-inline text-center py-2">
            <li class="list-inline-item">
                <h5 class="mb-1">¡Haz click aquí para </h5>
            </li>
            <li class="list-inline-item">
                <a href="#!" class="waves-effect waves-light btn btn-#d50000 red accent-4">Registrarte!</a>
            </li>
        </ul>
        <hr />

        <!-- Botones de redes sociales -->
        <ul class="list-unstyled list-inline text-center">
            <li class="list-inline-item">
                <a class="btn-floating btn-fb mx-1">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png" width="50" height="50" />
                </a>
            </li>
            <li class="list-inline-item">
                <a class="btn-floating btn-tw mx-1">
                    <img src="https://www.investopedia.com/thmb/47bnydwzJgOYZEjqgt3sCMH6NI4=/640x640/filters:no_upscale():max_bytes(150000):strip_icc()/Instagramlogo-5c79a761c9e77c0001f57c0b.png" width="50" height="50" />
                </a>
            </li>
            <li class="list-inline-item">
                <a class="btn-floating btn-gplus mx-1">
                    <img src="https://acousticsolutionsarg.com/wp-content/uploads/2018/01/Icono-Twitter.png" width="50" height="50" />
                </a>
            </li>
            <li class="list-inline-item">
                <a class="btn-floating btn-li mx-1">
                    <img src="https://images.vexels.com/media/users/3/137399/isolated/preview/47c9900ae893cbed1e1599ab9c8bcb18-pinterest-icon-logo-by-vexels.png" width="50" height="50" />
                </a>
            </li>
        </ul>
        <!-- Copyright -->
        <center>© 2019 Copyright: <b>SVC Software</b></center>

    </footer>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="Mjs/materialize.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script>
        $('.carousel.carousel-slider').carousel({ fullWidth: true });
        $(".button-collapse").sideNav();
    </script>

</body>
</html>
