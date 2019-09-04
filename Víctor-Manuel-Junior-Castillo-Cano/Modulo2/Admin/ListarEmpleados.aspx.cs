using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Modulo2
{
    public partial class ListarEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Listar();
        }
        protected void Listar()
        {
            gvListadoEmpleados.DataSource = Usuarios.ListarEmpleados();

            gvListadoEmpleados.DataBind();
        }
    }
}