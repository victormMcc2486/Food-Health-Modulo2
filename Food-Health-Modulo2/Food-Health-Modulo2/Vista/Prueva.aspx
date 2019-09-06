<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueva.aspx.cs" Inherits="Vista.Prueva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Mcss/materialize.min.css" media="screen,projection" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
</head>
<body>
    <form runat="server">
                   <div class="table-responsive">
                <table class="table table-active" style="margin-top: 30px;">
                    <tr>
                        <td>
                            <center>
                            <asp:GridView ID="gvPersonas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvPersonas_SelectedIndexChanged">
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

        <asp:LinkButton ID="LinkButton1" href="#modal1" CssClass="waves-effect waves-light btn modal-trigger" runat="server" >LinkButton</asp:LinkButton>
        <div id="modal1" class="modal">

            <div class="modal-content">
                <center><h4>Modificar Jefe de Cocina</h4></center>
                <p>

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

                                <center><div class="form-group" >

                                    <asp:Button ID="btnModificar" CssClass="btn btn-warning btn-block" runat="server" Text="Modificar"  OnClick="btnModificar_Click" style="width: 100%; margin-bottom:5px" />
                                    <asp:Button ID="btnCancelar" CssClass="btn btn-danger btn-block" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" style="width: 100%"/>
                                </div></center>


                            </div>
                        </div>
                    </div>
                </p>
            </div>
</div>
    </form>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="Mjs/materialize.min.js"></script>

    <script>
        $(document).ready(function () {
            // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
            $('.modal').modal();
        });
    </script>
</body>
</html>
