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

        private void Lista()
        {
            gvCocineros.DataSource = ClChef.ListaChef();
            gvCocineros.DataBind();
        }

        private void AsignarCampos()
        {
            string documento = hfDocumento.Value;
            cocineros Cocineros = ClCocineros.Buscar_Documento_Cocinero(documento);

            hfCocinero.Value = Cocineros.idCocineros.ToString();

            txtDireccion.Text = Cocineros.direccion;
            txtDocumento.Text = Cocineros.documento;
            txtEmail.Text = Cocineros.correo;
            txtNombre.Text = Cocineros.nombres;
            txtTelefono.Text = Cocineros.telefono;
        }

        private void MostrarModal()
        {
            modal.Visible = true;
        }

        private void OcultarModal()
        {
            modal.Visible = false;
        }

        protected void gvCocineros_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = gvCocineros.SelectedRow;
            hfDocumento.Value = fila.Cells[1].Text;
            AsignarCampos();
            MostrarModal();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}