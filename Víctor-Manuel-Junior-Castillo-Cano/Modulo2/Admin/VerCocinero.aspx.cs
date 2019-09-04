using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista.Admin
{
    public partial class VerCocinero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lista();
        }

        protected void Lista()
        {
            gvCocineros.DataSource = ClChef.ListaChef();
            gvCocineros.DataBind();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            string documento = txtDocumento.Text;
            string correo = txtCorreo.Text;
            string nombres = txtNombres.Text;
            string direccion = txtDireccion.Text;
            string telefono = txtTelefono.Text;

            int Registro = ClCocineros.AgregarCocineros(documento, correo, nombres, direccion, telefono);

            
            if (Registro == 2)
            {
                Response.Write("<script>alert('Ocurrió un error al modificar')</script>");
            }
            else if (Registro == 3)
            {
                Response.Write("<script>alert('Cocinero modificado con éxito')</script>");
            }

            Limpiar();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
            OcultarCampos();
        }

        protected void gvCocineros_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void AsignarCampos()
        {

        }
        private void OcultarCampos()
        {
            
        }
        private void Limpiar()
        {
            txtCorreo.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtDocumento.Text = string.Empty;
            txtNombres.Text = string.Empty;
            txtTelefono.Text = string.Empty;

        }
    }
}