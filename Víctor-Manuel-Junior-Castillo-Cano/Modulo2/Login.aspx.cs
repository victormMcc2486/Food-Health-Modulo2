using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Modulo2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int Rol = ClLogin.IniciarSesion(txtUsuario.Text, txtClave.Text);

            switch (Rol)
            {
                case 1:
                    Response.Redirect("MenuAdmin.aspx");
                    break;
                case 2:
                    Response.Redirect("MenuCliente.aspx");
                    break;
                default:
                    Response.Write("<script>alert('Error al iniciar sesión')</script>");
                    break;
            }
        }
    }
}