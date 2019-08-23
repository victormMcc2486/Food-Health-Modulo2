<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPers.aspx.cs" Inherits="Vista.Admin.AdminPers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <title>Administrar Personas</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <asp:LinkButton ID="btn_admin" runat="server" CssClass="navbar-brand" OnClick="admin_perso">Administrador</asp:LinkButton>
                <asp:Button ID="Button1" runat="server" data-toggle="collapse" data-target="#navbarSupportedContent" CssClass="navbar-toggler" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" Text="Button" />
 
   <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
          <asp:LinkButton ID="btnper" CssClass="dropdown-item" runat="server"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Personas</asp:LinkButton>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <asp:LinkButton ID="list_personas" CssClass="dropdown-item" runat="server" OnClick="lista_personas">Listar personas</asp:LinkButton>
        </div>
      </li>
    </ul>
  </div>
</nav>
        </div>
        <div style="margin-top:20px;">
            <center><h1>ADMINISTRAR PERSONAS</h1></center>
 
        </div>
            <div class="container">
        <div class="row">
            <div class="  col-md-6  mx-auto " style="margin-top:3%">
                <div class="card ">
                    <div class="card-body ">
                        <h5 class="card-title">Formulario Persona</h5>
                        <p class="card-text">
                            <div class="form-group ">
                                    <asp:Label ID="Label4" runat="server" Text="Documento:"></asp:Label>  
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Documento"></asp:TextBox>
                                </div>
                            <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Correo:"></asp:Label> 
                                    <asp:TextBox ID="TextBox1" placeholder="Correo Electronico" CssClass="form-control" runat="server"  ></asp:TextBox>
                                </div>
                            <div class="form-group ">
                                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>  
                                    <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" placeholder="Nombre"></asp:TextBox>
                                </div>
                            <div class="form-group ">
                                    <asp:Label ID="Label2" runat="server" Text="Dirección:"></asp:Label>  
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Dirección"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-3" style="display:inline-flex">
                                    <asp:Button ID="btnAgregar" CssClass="form-control btn btn-primary" runat="server" Text="Agregar"  />
                                </div>
                                <div class="form-group col-md-4 " style="display:inline-flex">
                                    <asp:Button ID="Button2" CssClass="form-control btn btn-primary" runat="server" Text="Modificar"  />
                                </div>
                                <div class="form-group col-md-4" style="display:inline-flex">
                                    <asp:Button ID="Button6" CssClass="form-control btn btn-primary" runat="server" Text="Deshabilitar"  />
                                </div>
                        </p>
                      </div>
                </div>

            </div>
        </div>
    </form>
</body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.min.js"></script>
</html>
