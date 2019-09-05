<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuCliente.aspx.cs" Inherits="Vista.MenuCliente" %>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="../Mcss/materialize.min.css" media="screen,projection" />
    <link rel="icon" type="image/png" href="../icono.png" />
    <title>Menú Cliente</title>
</head>
<body>
    <!--Navbar-->
    <nav class=" #424242 grey darken-3 " style="position: fixed; z-index: 1000;">
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
        <ul class=" hide-on-med-and-down">

            <div class="chip left" style="margin-left: 0px; margin-top: 20px">
                <img src="https://www.coordinadora.com/wp-content/uploads/sidebar_usuario-corporativo.png" alt="Contact Person">
                Nombre de Usuario
            </div>
            <li><a href="#" style="font-size: 25px; align-content: center; color: white; text-decoration: none">Food / Health</a></li>

            <li class="right ">
                <a href="../Login.aspx" class="waves-effect waves-light btn btn-#1b5e20 green darken-4"><i class="material-icons right">power_settings_new</i>Cerrar Sesion</a>
            </li>
            <div class="fixed-action-btn vertical col-sm-5">
                <a class="btn-floating btn-large pulse btn-#1b5e20 green darken-4">
                    <i class="large material-icons">home</i>
                </a>
                <ul>
                    <li><a href="#" class="btn-floating btn tooltipped  blue" data-position="left" data-delay="50" data-tooltip="Modificar Servicio"><i class="material-icons">edit</i></a></li>
                    <li><a href="#" class="btn-floating btn tooltipped  red" data-position="left" data-delay="50" data-tooltip="Datos Personales"><i class="material-icons">account_box</i></a></li>
                    <li><a href="#" class="btn-floating btn tooltipped  green" data-position="left" data-delay="50" data-tooltip="Suspender Servicio"><i class="material-icons">pause</i></a></li>
                    <li><a href="#" class="btn-floating btn tooltipped  blue" data-position="left" data-delay="50" data-tooltip="Cancelar Servicio"><i class="material-icons">cancel</i></a></li>
                </ul>
            </div>
        </ul>

        <ul class="side-nav" id="mobile-demo">
            <br />
            <div class="chip" style="margin-left: 20px">
                <img src="https://www.coordinadora.com/wp-content/uploads/sidebar_usuario-corporativo.png" alt="Contact Person">
                Nombre de Usuario
            </div>
            <li><a href="#">Modificar Menu</a></li>
            <li><a href="#">Datos Personales</a></li>
            <li><a href="#">Suspender Servicio</a></li>
            <li><a href="#">Cancelar Servicio</a></li>
            <a href="../Login.aspx" class="waves-effect waves-light btn btn-#1b5e20 green darken-4"><i class="material-icons right">power_settings_new</i>Cerrar Sesion</a>

        </ul>


    </nav>

    <div class="carousel carousel-slider ">
        <a class="carousel-item">
            <img src="https://statics-correofarmaceutico.uecdn.es/cms/sites/11/2018/11/piramide-alimentacion-saludable-5bfe978e72d41.jpg" /></a>
        <a class="carousel-item">
            <img src="http://www.mercadonegro.pe/wp-content/uploads/2018/02/habitos-alimenticios.jpg" /></a>
    </div>

    <!--Menu-->

    <footer class=" page-footer #424242 grey darken-3">
        <!-- Copyright -->
        <center>© 2019 Copyright: <b>SVC Software</b></center>

    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../Mjs/materialize.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script>
        $('.carousel.carousel-slider').carousel({ fullWidth: true });
        $(".button-collapse").sideNav();

        $(document).ready(function () {
            $('.tooltipped').tooltip({ delay: 50 });
        });

        $(".dropdown-trigger").dropdown();
    </script>
</body>
</html>
