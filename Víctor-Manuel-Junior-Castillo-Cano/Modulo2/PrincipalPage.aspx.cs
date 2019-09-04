using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Modulo2
{
    public partial class PrincipalPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIngresarLogin_Click(object sender, EventArgs e)
        {

            int Rol = ClLogin.IniciarSesion(txtUsername.Text, txtContraseña.Text);

            LimpiarCampos();

            switch (Rol)
            {
                case 1:
                    Response.Redirect("Admin/MenuAdmin.aspx");
                    break;
                case 2:
                    Response.Redirect("Clientes/MenuCliente.aspx");
                    break;
                default:
                    Response.Write("<script>alert('Error al iniciar sesión')</script>");
                    break;
            }
        }
        private void LimpiarCampos()
        {
            txtUsername.Text = string.Empty;
            txtContraseña.Text = string.Empty;
        }
    }
}