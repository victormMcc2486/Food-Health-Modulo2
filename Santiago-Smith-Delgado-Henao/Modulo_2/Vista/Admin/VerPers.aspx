<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerPers.aspx.cs" Inherits="Vista.Admin.VerPers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <title>Ver Personas</title>
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
            <asp:LinkButton ID="admin_personas" CssClass="dropdown-item" runat="server" OnClick="admin_pers">Administrar personas</asp:LinkButton>
        </div>
      </li>
    </ul>
  </div>
</nav>
        </div>
        <div style="margin-top:20px;">
            <center><h1>VER PERSONAS</h1></center>

            <div class="table-responsive">
            <table class="table table-active" style="margin-top:30px;">
                <tr>
                    <td><center>
                        <asp:GridView ID="gvPersonas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
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
</body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.min.js"></script>
</html>
