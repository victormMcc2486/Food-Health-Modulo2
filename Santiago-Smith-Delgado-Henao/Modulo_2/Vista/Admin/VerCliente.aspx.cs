﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista.Admin
{
    public partial class VerCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lista();
        }

        protected void Lista()
        {
            gvPersonas.DataSource = ClUsuario.ListaClientes();
            gvPersonas.DataBind();
        }
    }
}