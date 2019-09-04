using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class VerPersonas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lista();
            ocultarDiv();

        }
        protected void Lista()
        {
            GvUsuarios.DataSource = Usuarios.ListaPersona();
            GvUsuarios.DataBind();
        }

        

        protected void GvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = GvUsuarios.SelectedRow;
            string nombre = fila.Cells[2].Text;
            Response.Write("<script>alert('Se selecciono el nombre:')</script>");
           


        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        private void ocultarDiv()
        {
            Modificar.Visible = false;
        }

        private void AsignarCampos()
        {
            string documeto = hfDocumento.Value;
            persona Per = Usuarios.Buscar_Documento(documeto);
            hfPersona.Value = Per.idPersona.ToString();

            txtDocumento.Text = Per.documento;
            txtNombre.Text = Per.nombre;
            txtTelefono.Text = Per.telefono;
            txtDireccion.Text = Per.direccion;

            Modificar.Visible = true;
        }
    }
}