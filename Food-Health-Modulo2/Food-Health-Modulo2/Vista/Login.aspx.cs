using System;
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

                if (Login == 1)
                {
                    Response.Write("<script>alert('Administrador Correcto')</script>");
                    Response.Redirect("Admin/MenuAdmin.aspx");
               
                }
                else if (Login == 2)
                {
                    Response.Write("<script>alert('Cliente Correcto')</script>");
                    Response.Redirect("Cliente/MenuCliente.aspx");
                }
                else if (Login == 3)
                {
                    Response.Write("<script>alert('Chef Correcto')</script>");
                    Response.Redirect("Chef/MenuChef.aspx");
                }
                else if (Login == 4)
                {
                    Response.Write("<script>alert('Cocineros Correcto')</script>");
                    Response.Redirect("Cocinero/MenuCocinero.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Usuario Incorrecto')</script>");
                }

                Limpiar();
        }


        public void Limpiar()
        {
            txtusuario.Text = string.Empty;
            txtclave.Text = string.Empty;
        }
    }
}