﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = txtusuario.Text;
            string pass = txtclave.Text;

            int Login = ClLogin.IniciarSesion(user, pass);

            if(Login == 0)
            {
                Response.Write("<script>alert('Usuario Incorrecto')</script>");
            } else
            {
                Response.Redirect("Menu.aspx");
                Response.Write("<script>alert('Usuario Correcto')</script>");
            }
        }
    }
}