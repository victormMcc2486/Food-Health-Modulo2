<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminChef.aspx.cs" Inherits="Vista.Admin.AdminChef" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="../Mcss/materialize.min.css" media="screen,projection" />
    <link rel="icon" type="image/png" href="../icono.png" />
    <title>Administrar Chef</title>
</head>
<body>
    <form id="form1" runat="server">


        <!--Navbar-->
        <ul id="dropdown1" class="dropdown-content">
            <li><a href="AdminCocinero.aspx">Cocineros</a></li>
        </ul>
        <ul id="dropdown2" class="dropdown-content">
            <li><a href="VerChef.aspx">Chef</a></li>
            <li><a href="VerCocinero.aspx">Cocineros</a></li>
            <li><a href="VerCliente.aspx">Clientes</a></li>
        </ul>
        <!--Navbar-->
        <nav class=" #424242 grey darken-3 " style="position: fixed; z-index: 1000;">
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <ul class="Left hide-on-med-and-down">
                <li><a href="#" style="font-size: 25px; color: white; text-decoration: none">Food / Health</a></li>
                <li class="fixed right ">
                    <a href="../Login.aspx" class="waves-effect waves-light btn btn-#1b5e20 green darken-4"><i class="material-icons right">power_settings_new</i>Cerrar Sesion</a>
                    <div class="fixed-action-btn vertical col-sm-5">
                        <a class="btn-floating btn-large pulse btn-#1b5e20 green darken-4">
                            <i class="large material-icons">home</i>
                        </a>
                        <ul>
                            <li><a href="AdminCocinero.aspx" class="btn-floating btn tooltipped  red" data-position="left" data-delay="50" data-tooltip="Administrar Cocineros"><i class="material-icons">person_add</i></a></li>
                            <li><a href="VerChef.aspx" class="btn-floating btn tooltipped  blue" data-position="left" data-delay="50" data-tooltip="Listar Chef"><i class="material-icons">list</i></a></li>
                            <li><a href="VerCocinero.aspx" class="btn-floating btn tooltipped  red" data-position="left" data-delay="50" data-tooltip="Listar Cocineros"><i class="material-icons">list</i></a></li>
                            <li><a href="VerCliente.aspx" class="btn-floating btn tooltipped  orange" data-position="left" data-delay="50" data-tooltip=" Listar Clientes"><i class="material-icons">list</i></a></li>
                        </ul>
                    </div>
                </li>
            </ul>

            <ul class="side-nav" id="mobile-demo">
                <li><a href="#" style="font-size: 25px;">Food / Health</a></li>
                <li><a style="text-decoration: none;" class="dropdown-button" href="#!" data-activates="dropdown1">Administar<i class="material-icons right">arrow_drop_down</i></a></li>
                <br />
                <li><a style="text-decoration: none" class="dropdown-button" href="#!" data-activates="dropdown2">Listar<i class="material-icons right">arrow_drop_down</i></a></li>
                <li class="right ">

                    <a href="../Login.aspx" class="waves-effect waves-light btn btn-#1b5e20 green darken-4"><i class="material-icons right">power_settings_new</i>Cerrar Sesion</a>
                </li>
            </ul>

        </nav>
        <center>
    <div class="container" style=" width:40%">
            <div class="row">
             <div class="form-group">
             <div class="card">
                <div class="card-content">
                    <p>
                            <div style="margin-top: 40px;">
                                <center><h3>ADMINISTRAR CHEF</h3></center>
                            </div>
                            <div class="row">
                                <div class="col-sm-8">
                                        <asp:Label runat="server" Text="N. Documento"></asp:Label>
                                        <asp:TextBox ID="txtDocumento" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label runat="server" Text="Email"></asp:Label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label runat="server" Text="Nombre"></asp:Label>
                                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label runat="server" Text="Dirección"></asp:Label>
                                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label runat="server" Text="Teléfono"></asp:Label>
                                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                    </div>
                                    <center>
                                    <div class="card-action">
                                        <div class="form-group">
                                            <asp:Button ID="btnGuardar" CssClass="btn btn-warning btn-block" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                                        </div>
                                    </div></center>
                            </div>
                                   
                    
                    </p>
            </div>
                                </div>

            </div>
    </div>
    </div>
  </center>
    </form>


    <footer class=" page-footer #424242 grey darken-3">
        <!-- Copyright -->
        <center>© 2019 Copyright: <b>SVC Software</b></center>

    </footer>
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
