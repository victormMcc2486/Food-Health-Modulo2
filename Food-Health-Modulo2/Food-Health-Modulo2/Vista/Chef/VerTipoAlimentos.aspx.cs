using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista.Chef
{
    public partial class VerTipoAlimentos : System.Web.UI.Page
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
            gvPersonas.DataSource = ClTipo_Alimento.ListaTipo_Alimentos();
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


            int resultado = ClTipo_Alimento.Modificar_Tipo_Alimento(id, nombre);

            if (resultado == 2)
            {
                Response.Write("<script>alert('Ocurrió un error')</script>");
            }
            else
            {
                Response.Write("<script>alert('Tipo Alimento modificado con éxito')</script>");
            }
            Limpiar();
            Lista();
        }

        private void AsignarCampos()
        {
            string nombre = hdNombre.Value;
            tipo_alimentos Alimentos = ClTipo_Alimento.Buscar_Documento_Tipo_Alimentos(nombre);

            hfAlimento.Value = Convert.ToString(Alimentos.idTipo);

            txtNombre.Text = Alimentos.nombretipo;

        }

        private void MostrarModal()
        {
            modal.Visible = true;
        }

        public void Limpiar()
        {
            txtNombre.Text = string.Empty;
        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int idAlimento = int.Parse(hfAlimento.Value);
            bool resultado = ClTipo_Alimento.Eliminar_Tipo_Alimento(idAlimento);

            if (resultado == false)
            {
                Response.Write("<script>alert('Ocurrió un error al eliminar')</script>");
            }
            else
            {
                Response.Write("<script>alert('Tipo Alimento eliminado con éxito')</script>");
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