using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vista
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostrarPersona_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerPersonas.aspx");
        }

        protected void btnCrudPersona_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrudPersona.aspx");
        }
    }
}