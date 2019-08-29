using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string Clave = txtClave.Text;
            string Username = txtUsername.Text;

            int resultado = ClUsuario.AgregarUsuario(Username, Clave);

            switch (resultado)
            {
                case 1:
                    Response.Write("<script>alert('El usuario ya existe')</script>");
                    break;
                case 2:
                    Response.Write("<script>alert('Error al registrarte')</script>");
                    break;
                case 3:
                    Response.Write("<script>alert('Usuario registrado')</script>");
                    break;
            }

            Limpiar();

        }
        private void Limpiar()
        {
            txtClave.Text = string.Empty;
            txtUsername.Text = string.Empty;
        }
    }
}