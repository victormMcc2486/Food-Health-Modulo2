using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista.Admin
{
    public partial class VerChef : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lista();
        }

        protected void Lista()
        {
            gvPersonas.DataSource = ClChef.ListaChef();
            gvPersonas.DataBind();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            OcultarCampos();
            LimpiarCampos();
        }

        protected void gvPersonas_SelectedIndexChanged(object sender, EventArgs e)
        {
            //GridView fila = gvPersonas.SelectedRow.Cells[2].Text;
            
            
        }
    }
}