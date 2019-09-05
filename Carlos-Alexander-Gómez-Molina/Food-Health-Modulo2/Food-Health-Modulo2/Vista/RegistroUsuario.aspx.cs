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
            string Documento = txtDocumento.Text;
            string Correo = txtCorreo.Text;
            string Nombres = txtNombre.Text;
            string Direccion = txtDireccion.Text;
            string Telefono = txtTelefono.Text;

            int resultadoCliente = ClUsuario.AgregarCliente(Documento, Correo, Nombres, Direccion, Telefono, Username, Clave);

            switch (resultadoCliente)
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
            txtCorreo.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtDocumento.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtTelefono.Text = string.Empty;
        }
    }
}