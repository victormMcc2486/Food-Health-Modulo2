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

        }
        protected void Lista()
        {
            GvUsuarios.DataSource = Usuarios.ListaPersona();
            GvUsuarios.DataBind();
        }

        protected void btnCrudPersona_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrudPersona.aspx");
        }

        protected void GvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = GvUsuarios.SelectedRow;
            string nombre = fila.Cells[2].Text;
            Response.Write("<script>alert('Se selecciono el nombre:')</script>");
           


        }
    }
}