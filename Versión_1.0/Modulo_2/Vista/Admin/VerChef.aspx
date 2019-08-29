<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerChef.aspx.cs" Inherits="Vista.Admin.VerChef" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
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
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDraopdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Administrar
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="AdminPers.aspx">Chef</a>
                            <a class="dropdown-item" href="AdminCocinero.aspx">Cocineros</a>
                            <a class="dropdown-item" href="AdminAlimentos.aspx">Alimentos</a>
                        </div>
                     </li>

                    <li class="nav-item dropdown nav-item active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Listar
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item">Chef</a>
                            <a class="dropdown-item" href="VerCocinero.aspx">Cocineros</a>
                             <a class="dropdown-item" href="VerAlimentos.aspx">Alimentos</a>
                            <a class="dropdown-item" href="VerCliente.aspx">Clientes</a>
                        </div>
                     </li>
                </ul>
                
            </div>
        </nav>
    </header>

        <div style="margin-top:20px;">
            <center><h1>VER CHEF</h1></center>

            <div class="table-responsive">
            <table class="table table-active" style="margin-top:30px;">
                <tr>
                    <td><center>
                        <asp:GridView ID="gvPersonas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Acción" ShowHeader="True" Text="Ver" />
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
    </form>

       <footer class="page-footer font-small bg-dark text-white" style="margin-top:121px;">
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2019 Copyright: <b>SVC Software</b></div>

</footer>
</body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.min.js"></script>
</html>
