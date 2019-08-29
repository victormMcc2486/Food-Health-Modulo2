﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Vista.Registrar" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="icon" type="image/png" href="icono.png" />
       <title>Food/Health</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Food / Health</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
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
                </ul>

                <!-- Inicio / Registrate -->
                <div class="btn-group" role="group">
                    <a class="btn btn-success" href="Login.aspx">
                        Iniciar Sesion
                    </a>
                    <a class="btn btn-danger" href="Registrar.aspx">Registrar</a>
                </div>
            </div>
        </nav>
    </header>
    
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-12 mx-auto m-5">
                <center><h1>REGISTRATE</h1></center>
                <form runat="server">
                            <div class="form-group">
                                <asp:Label runat="server" Text="Documento"></asp:Label>
                                <asp:TextBox ID="txtDocumento" CssClass="form-control" placeholder="Documento" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" Text="Correo"></asp:Label>
                                <asp:TextBox ID="txtCorreo" runat="server" TextMode="Email" CssClass="form-control" placeholder="Correo"></asp:TextBox>
                            </div>  
                            <div class="form-group">
                                <asp:Label runat="server" Text="Nombre"></asp:Label>
                                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Nombre"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" Text="Dirección"></asp:Label>
                                <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Dirección"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" Text="Teléfono"></asp:Label>
                                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" placeholder="Teléfono"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnRegistrar" runat="server" CssClass="form-control btn btn-danger" Text="Registrate" OnClick="btnRegistrar_Click" />
                            </div>
                </form>
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
                <hr class="clearfix w-100 d-md-none"/>
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
        <hr/>
        <!-- Botones de registrate -->
        <ul class="list-unstyled list-inline text-center py-2">
            <li class="list-inline-item">
                <h5 class="mb-1">¡Haz click aquí para </h5>
            </li>
            <li class="list-inline-item">
                <a href="#!" class="btn btn-danger btn-rounded">Registrarte!</a>
            </li>
        </ul>
        <hr/>

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
