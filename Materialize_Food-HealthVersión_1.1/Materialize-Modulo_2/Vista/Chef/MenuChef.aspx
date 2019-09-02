<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuChef.aspx.cs" Inherits="Vista.MenuChef" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="../Mcss/materialize.min.css" media="screen,projection" />
    <link rel="icon" type="image/png" href="../icono.png" />
    <title>Menú Chef</title>
</head>
<body>
    <!--Navbar-->
    <nav class=" #424242 grey darken-3 " style="position: fixed; z-index: 1000;">
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
        <ul class=" hide-on-med-and-down">

            <div class="chip left" style="margin-left: 0px; margin-top: 20px">
                <img src="https://images.vexels.com/media/users/3/153622/isolated/lists/dc838062d8ef69626cbb3752778cdcae-sombrero-de-cocina-dibujado-a-mano.png" alt="Contact Person">
                Nombre de Usuario
            </div>
            <li><a href="#" style="font-size: 25px; align-content: center; color: white; text-decoration: none">Chef</a></li>

            <li class="right ">
                <a href="../Login.aspx" class="waves-effect waves-light btn btn-#1b5e20 green darken-4"><i class="material-icons right">power_settings_new</i>Cerrar Sesion</a>
            </li>
            <div class="fixed-action-btn vertical col-sm-5">
                <a class="btn-floating btn-large pulse black">
                    <i class="large material-icons">home</i>
                </a>
                <ul>
                    <li><a href="VerAlimentos.aspx" class="btn-floating btn tooltipped  green" data-position="left" data-delay="50" data-tooltip="Listar Alimentos"><i class="material-icons">list</i></a></li>
                    <li><a href="AdminAlimentos.aspx" class="btn-floating btn tooltipped  green" data-position="left" data-delay="50" data-tooltip="Administrar Alimentos"><i class="material-icons">local_dining</i></a></li>
                </ul>
            </div>
        </ul>

        <ul class="side-nav" id="mobile-demo">
            <br />
            <div class="chip" style="margin-left: 20px">
                <img src="https://images.vexels.com/media/users/3/153622/isolated/lists/dc838062d8ef69626cbb3752778cdcae-sombrero-de-cocina-dibujado-a-mano.png" alt="Contact Person">
                Nombre de Usuario
            </div>
            <li><a href="AdminAlimentos.aspx">Listar Alimentos</a></li>
            <li><a href="VerAlimentos.aspx">Administar Alimentos</a></li>
            <a href="../Login.aspx" class="waves-effect waves-light btn btn-#1b5e20 green darken-4"><i class="material-icons right">power_settings_new</i>Cerrar Sesion</a>

        </ul>


    </nav>

    <div class="carousel carousel-slider">
        <a class="carousel-item">
            <img src="https://grupobelskin.com/eng/wp-content/uploads/2017/02/FONDO-MENU-ARCHIVO-DE-TRABAJO-MOZAICO-15FEB17.jpg" /></a>
    </div>

    <!--Menu-->

    <footer class=" page-footer #424242 grey darken-3">
        <!-- Copyright -->
        <center>© 2019 Copyright: <b>SVC Software</b></center>

    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
