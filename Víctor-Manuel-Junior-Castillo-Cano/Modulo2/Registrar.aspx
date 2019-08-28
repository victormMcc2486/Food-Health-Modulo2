<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Modulo2.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>food/health</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">food / health</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <!-- Opciones del navbar -->
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
                
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar..." aria-label="Buscar"/>
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
                
            </div>
        </nav>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <form runat="server">
                            <div class="form-group">
                                <asp:Label runat="server" Text="Nombre"></asp:Label>
                                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" Text="Documento"></asp:Label>
                                <asp:TextBox ID="txtDocumento" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" Text="Dirección"></asp:Label>
                                <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" Text="Teléfono"></asp:Label>
                                <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" Text="IdUsuario"></asp:Label>
                                <asp:TextBox ID="txtIdUsuario" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnRegistrar" runat="server" CssClass="form-control btn btn-danger btn-block" Text="Registrar" OnClick="btnRegistrar_Click" />
                            </div>
                        </form>
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
        <!-- Botones de login -->
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
