<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vista.Login" %>


<!doctype html>
<html lang="es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Login</title>
</head>
<body style="background-image:url('https://idealchef.es/wp-content/uploads/2018/11/comida-saludable.jpg');
    background-size:cover; background-repeat:no-repeat;">
    <nav class="navbar navbar-dark bg-dark text-white">
  <a class="navbar-brand">foot | healt</a>
 
</nav>
    <div class="container">
        <div class="row">
            <div class=" col-md-4 " style="margin-top:15%">
                <div class="card  bg-dark text-white">
                    <div class="card-body ">
                        <h5 class="card-title">Sistema de Ingreso   </h5>
                        <p class="card-text">
                            <form id="form1" runat="server">
                                <div class="form-group ">
                                    <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>  
                                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Usuario"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Clave:"></asp:Label> 
                                    <asp:TextBox ID="txtClave" TextMode="Password" placeholder="Contraseña" CssClass="form-control" runat="server"  ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnEnviar" CssClass="form-control btn btn-primary" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
                                </div>
                             </form>
                        </p>
                      </div>
                </div>

            </div>
        </div>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>


</body>
</html>
