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
            OcultarModal();

        }

        private void OcultarModal()
        {

            modal1.Visible = false;
        }
        private void Lista()
        {
            gvCocineros.DataSource = ClCocineros.ListaCocineros();
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
            modal1.Visible = true;
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
            int id = int.Parse(hfCocinero.Value);
            string documento = txtDocumento.Text;
            string correo = txtEmail.Text;
            string nombres = txtNombre.Text;
            string direccion = txtDireccion.Text;
            string telefono = txtTelefono.Text;


            int resultado = ClCocineros.ModificarCocineros(id, documento, correo, nombres, direccion, telefono);

            if (resultado == 2)
            {
                Response.Write("<script>alert('Ocurrió un error')</script>");
            }
            else
            {
                Response.Write("<script>alert('Cocinero modificado con éxito')</script>");
            }
            Limpiar();
            Lista();
        }
        public void Limpiar()
        {
            txtDocumento.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtTelefono.Text = string.Empty;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int idCocineros = int.Parse(hfCocinero.Value);
            bool resultado = ClCocineros.EliminarCocinero(idCocineros);

            if (resultado == false)
            {
                Response.Write("<script>alert('Ocurrió un error al eliminar')</script>");
            }
            else
            {
                Response.Write("<script>alert('Chef eliminado con éxito')</script>");
            }
            Limpiar();
            Lista();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}