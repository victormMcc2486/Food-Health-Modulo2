using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Modulo2
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string documento = txtDocumento.Text;
            int idUsu = int.Parse(txtIdUsuario.Text);
            string telefono = txtTelefono.Text;
            string direccion = txtDireccion.Text;

            int resultado = Usuarios.RegistrarPersona(documento, nombre, direccion, telefono, idUsu);

            switch (resultado)
            {
                case 1:
                    Response.Write("<script>alert('Bien, te haz registrado correctamente')</script>");
                    break;
                case 2:
                    Response.Write("<script>alert('Upps... ha ocurrido un error')</script>");
                    break;
                case 3:
                    Response.Write("<script>alert('El usuario a registrar ya existe')</script>");
                    break;
            }
            LimpiarCampos();
        }
        protected void LimpiarCampos()
        {
            txtNombre.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtDocumento.Text = string.Empty;
            txtIdUsuario.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtTelefono.Text = string.Empty;
        }
    }
}