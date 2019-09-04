<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruevaNav.aspx.cs" Inherits="Vista.PruevaNav" %>

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
    <!--
         <center>
        <div class="row">
        <div class="col s12 m8">
            <div class="card">
                <div class="card-content">
                    <p>
                        <form id="form1" runat="server">
                            <div style="margin-top: 20px;">
                                <center><h1>ADMINISTRAR CHEF</h1></center>
                            </div>
                            <div class="row">
                                <div class="col-12 col-sm-12 col-xl-2 col-md-2"></div>
                                <div class="col-12 col-sm-12 col-xl-8 col-md-8">
                                    <div class="form-group">
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
                                    <div class="card-action">
                                        <div class="form-group">
                                            <asp:Button ID="btnGuardar" CssClass="btn btn-warning btn-block" runat="server" Text="Guardar"  />
                                        </div>
                                    </div>
                                </div>
                        </form>
                    </p>
                </div>

            </div>
        </div>
    </div>
    </center>
        -->

        <div class="container " style="margin-left:500px">
        <div class="row">
        <div class="col s12 m7">
          <div class="card">
            <div class="card-image">
              <img src="images/sample-1.jpg">
              <span class="card-title">Card Title</span>
            </div>
            <div class="card-content">
              <p>I am a very simple card. I am good at containing small bits of information.
              I am convenient because I require little markup to use effectively.</p>
            </div>
            <div class="card-action">
              <a href="#">This is a link</a>
            </div>
          </div>
        </div>
      </div>
        </div>
            



    <footer class=" page-footer #424242 grey darken-3">
        <!-- Copyright -->
        <center>© 2019 Copyright: <b>SVC Software</b></center>

    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="../Mjs/materialize.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script>

        $(".button-collapse").sideNav();

        $(document).ready(function () {
            $('.tooltipped').tooltip({ delay: 50 });
        });

        $(".dropdown-trigger").dropdown();
    </script>
</body>
</html>
