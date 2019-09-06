<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerCliente.aspx.cs" Inherits="Vista.Admin.VerCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" media="screen,projection" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/png" href="../icono.png" />
    <title>Ver Chef</title>
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

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDraopdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Administrar
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="AdminChef.aspx">Chef</a>
                                <a class="dropdown-item" href="AdminCocinero.aspx">Cocineros</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Listar
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="VerChef.aspx">Chef</a>
                                <a class="dropdown-item" href="VerCocinero.aspx">Cocineros</a>
                                <a class="dropdown-item">Clientes</a>
                            </div>
                        </li>
                    </ul>

                </div>
            </nav>
        </header>

        <div style="margin-top: 20px;">
            <center><h1>VER CLIENTE</h1></center>

            <div class="table-responsive">
                <table class="table table-active" style="margin-top: 30px;">
                    <tr>
                        <td>
                            <center>
                        <asp:GridView ID="gvPersonas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvPersonas_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:ButtonField CommandName="Select" ControlStyle-CssClass="waves-effect waves-light btn modal-trigger" HeaderText="Acción" ShowHeader="True" Text="Ver" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView></center>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <!-- Modal Structure -->
        <div class="modal" tabindex="-1" runat="server" id="modal" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modificar Cliente</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div runat="server" id="modificar">
                            <div class="row">
                                <div class="col-12 col-sm-12 col-xl-2 col-md-2"></div>
                                <div class="col-12 col-sm-12 col-xl-8 col-md-8">
                                    <div class="form-group">

                                        <asp:HiddenField ID="hfCliente" runat="server" />
                                        <asp:HiddenField ID="hfDocumento" runat="server" />
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
                                    <asp:HiddenField ID="hfidUsuario" runat="server" />

                                    <center><div class="form-group" >

                                    <asp:Button ID="btnModificar" CssClass="btn btn-primary btn-block" runat="server" Text="Modificar" OnClick="btnModificar_Click" style="width: 100%; margin-bottom:5px" />
                                    <asp:Button ID="btnEliminar" CssClass="btn btn-warning btn-block" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" style="width: 100%; margin-bottom:5px" />
                                    
                                </div></center>


                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <footer class="page-footer font-small bg-dark text-white" style="margin-top: 121px;">
        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2019 Copyright: <b>SVC Software</b></div>

    </footer>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
        $('.modal').modal();
    });
</script>
</html>
