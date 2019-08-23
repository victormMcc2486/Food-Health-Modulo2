﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrudPersona.aspx.cs" Inherits="Vista.CrudPerona" %>

<!doctype html>
<html lang="es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Formulario Persona</title>
</head>
<body>
     <nav class="navbar navbar-light bg-light">
  <a class="navbar-brand">Admin</a>

</nav>
    <div class="container">
        <div class="row">
            <div class="  col-md-6  mx-auto " style="margin-top:10%">
                <div class="card ">
                    <div class="card-body ">
                        <h5 class="card-title">Formulario Persona</h5>
                        <p class="card-text">
                            <form id="form2" runat="server">
                                <div class="form-group ">
                                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>  
                                    <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" placeholder="Nombre"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Correo:"></asp:Label> 
                                    <asp:TextBox ID="txtCorreo" TextMode="email" placeholder="Correo Electronico" CssClass="form-control" runat="server"  ></asp:TextBox>
                                </div>
                                <div class="form-group col-md-3" style="display:inline-flex">
                                    <asp:Button ID="btnAgregar" CssClass="form-control btn btn-primary" runat="server" Text="Agregar"  />
                                </div>
                                <div class="form-group col-md-4 " style="display:inline-flex">
                                    <asp:Button ID="Button2" CssClass="form-control btn btn-primary" runat="server" Text="Modificar"  />
                                </div>
                                <div class="form-group col-md-4" style="display:inline-flex">
                                    <asp:Button ID="Button6" CssClass="form-control btn btn-primary" runat="server" Text="deshabilitar"  />
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
</body>
</html>