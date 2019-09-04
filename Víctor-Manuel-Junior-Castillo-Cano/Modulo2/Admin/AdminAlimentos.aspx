<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAlimentos.aspx.cs" Inherits="Vista.Admin.AdminAlimentos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="icon" type="image/png" href="../icono.png" />
    <title>Administrar Alimentos</title>
</head>
<body>
     <form id="form1" runat="server">
         <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Food / Health</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="MenuAdmin.aspx">Inicio</a>
                    </li>

                     <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdoawn" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Administrar
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="AdminPers.aspx">Chef</a>
                            <a class="dropdown-item" href="AdminCocinero.aspx">Cocineros</a>
                            <a class="dropdown-item" href="AdminAlimentos.aspx">Alimentos</a>
                        </div>
                     </li>

                   

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Listar
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="VerPers.aspx">Chef</a>
                            <a class="dropdown-item" href="VerCocinero.aspx"s>Cocineros</a>
                             <a class="dropdown-item" href="VerAlimentos.aspx">Alimentos</a>
                            <a class="dropdown-item" href="VerCliente.aspx">Clientes</a>
                        </div>
                     </li>
                </ul>
                
            </div>
        </nav>
    </header>
        <div style="margin-top:20px;">
            <center><h1>ADMINISTRAR ALIMENTOS</h1></center>
 
        </div>
  <div class="row">
            <div class="col-12 col-sm-12 col-xl-2 col-md-2"></div>
            <div class="col-12 col-sm-12 col-xl-8 col-md-8">
                    <div class="form-group">

                        <asp:Label runat="server" Text="Nombre"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                    </div>

                 <div class="form-group">
                         <center><asp:Label  runat="server" Text="Tipos" CssClass="font-weight-bold"></asp:Label></center>
                     <div class="form-group">
                         <asp:Label  runat="server" Text="1 - Bebidas" CssClass="text-muted"></asp:Label>
                     </div>
                        
                        <asp:Label  runat="server" Text="2 - Comestibles" CssClass="text-muted"></asp:Label>
                            

                    </div>


                    <div class="form-group">
                        
                        <asp:Label  runat="server" Text="Tipo"></asp:Label>
                        <asp:TextBox ID="txtTipo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    </div>

                    <div class="form-group">

                        <asp:Label runat="server" Text="Detalles"></asp:Label>
                        <asp:TextBox ID="txtDetalles" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>

                    <div class="form-group">

                        <asp:Button ID="btnGuardar" CssClass="btn btn-warning btn-block" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />  
                    </div>

                
            </div>
        </div>
        </form>

      <footer class="page-footer font-small bg-dark text-white" style="margin-top:30px;">
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2019 Copyright: <b>SVC Software</b></div>

</footer>
</body>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.min.js"></script>
</html> 
