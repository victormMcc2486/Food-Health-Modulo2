using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista.Admin
{
    public partial class VerAlimentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lista();
            OcultarModal();
        }

        private void OcultarModal()
        {

            modal.Visible = false;
        }

        protected void Lista()
        {
            gvPersonas.DataSource = ClAlimentos.ListaAlimentos();
            gvPersonas.DataBind();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(hfAlimento.Value);
            string nombre = txtNombre.Text;
            int tipo = int.Parse(txtTipo.Text);
            string detalles = txtDetalles.Text;


            int resultado = ClAlimentos.ModificarAlimento(id, nombre, tipo, detalles);

            if (resultado == 2)
            {
                Response.Write("<script>alert('Ocurrió un error')</script>");
            }
            else
            {
                Response.Write("<script>alert('Alimento modificado con éxito')</script>");
            }
            Limpiar();
            Lista();
        }


        private void AsignarCampos()
        {
            string nombre = hdNombre.Value;
            alimentos Alimentos = ClAlimentos.Buscar_Documento_Alimentos(nombre);

            hfAlimento.Value = Convert.ToString(Alimentos.idAlimentos);

            txtNombre.Text = Alimentos.nombre;
            txtTipo.Text = Convert.ToString(Alimentos.idTipo);
            txtDetalles.Text = Alimentos.detalles;

        }

        private void MostrarModal()
        {
            modal.Visible = true;
        }

        public void Limpiar()
        {
            txtNombre.Text = string.Empty;
            txtTipo.Text = string.Empty;
            txtDetalles.Text = string.Empty;
        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int idAlimento = int.Parse(hfAlimento.Value);
            bool resultado = ClAlimentos.EliminarAlimento(idAlimento);

            if (resultado == false)
            {
                Response.Write("<script>alert('Ocurrió un error al eliminar')</script>");
            }
            else
            {
                Response.Write("<script>alert('Alimento eliminado con éxito')</script>");
            }
            Limpiar();
            Lista();
        }

        protected void gvPersonas_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow fila = gvPersonas.SelectedRow;
            hdNombre.Value = fila.Cells[1].Text;
            AsignarCampos();
            MostrarModal();
        }
    }
}