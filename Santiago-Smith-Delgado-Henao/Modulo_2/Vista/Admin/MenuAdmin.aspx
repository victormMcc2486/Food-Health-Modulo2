<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAdmin.aspx.cs" Inherits="Vista.MenuAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <title>Menú Administrador</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <asp:Label ID="Label1" runat="server" CssClass="navbar-brand" Text="Administrador"></asp:Label>
                <asp:Button ID="Button1" runat="server" data-toggle="collapse" data-target="#navbarSupportedContent" CssClass="navbar-toggler" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" Text="Button" />
 
   <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
          <asp:LinkButton ID="btnper" CssClass="dropdown-item" runat="server"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Personas</asp:LinkButton>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <asp:LinkButton ID="list_personas" CssClass="dropdown-item" runat="server" OnClick="lista_personas">Listar personas</asp:LinkButton>
            <asp:LinkButton ID="admin_personas" CssClass="dropdown-item" runat="server" OnClick="admin_pers">Administrar personas</asp:LinkButton>
        </div>
      </li>
    </ul>
  </div>
</nav>
        </div>
    </form>
</body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.min.js"></script>
</html>
