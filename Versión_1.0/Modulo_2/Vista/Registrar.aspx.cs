using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string Correo = txtCorreo.Text;
            string Direccion = txtDireccion.Text;
            string Documento = txtDocumento.Text;
            string Nombre = txtNombre.Text;
            string Telefono = txtTelefono.Text;

            int resultado = ClUsuario.AgregarCliente(Documento, Correo, Nombre, Direccion, Telefono);

            switch (resultado)
            {
                case 1:
                    Response.Write("<script>alert('El usuario ya existe')</script>");
                    break;
                case 2:
                    Response.Write("<script>alert('Error al registrarte')</script>");
                    break;
                case 3:
                    Response.Write("<script>alert('Registrado correctamente')</script>");
                    break;
            }

            Limpiar();

        }
        private void Limpiar()
        {
            txtCorreo.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtDocumento.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtTelefono.Text = string.Empty;
        }
    }
}