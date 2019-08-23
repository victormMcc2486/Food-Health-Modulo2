<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="Vista.VerPersonas" %>

<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Ver Personas</title>
  </head>
  <body>
      <nav class="navbar navbar-light bg-light">
  <a class="navbar-brand">Admin</a>

</nav>

      <form ID="form" runat="server">
          <div class=" table-responsive ">
                          <table class="table table-active">
                              <tr>
                                  <td><center>
                                      <asp:GridView ID="GvUsuarios" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                          <AlternatingRowStyle BackColor="White" />
                                          <FooterStyle BackColor="#CCCC99" />
                                          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                          <RowStyle BackColor="#F7F7DE" />
                                          <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                          <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                          <SortedAscendingHeaderStyle BackColor="#848384" />
                                          <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                          <SortedDescendingHeaderStyle BackColor="#575357" />
                                      </asp:GridView>
                                  </td></center>
                              </tr>
                          </table>             
          </div>
      </form>
          

    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
