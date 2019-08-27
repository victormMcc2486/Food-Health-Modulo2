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

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            String user = txtUsuario.Text;
            String pass = txtClave.Text;

            int Login = ClassLogin.IniciarSesion(user, pass);

            if (Login == 0)
            {
                Response.Write("<script>alert('Usuario Incorrecto')</script>");
            }else if (Login == 1)
            {
                Response.Write("<script> Swal.fire('Hello world!') </script>");
                Response.Redirect("menu.aspx");
                

              
            }
            else
            {
                Response.Redirect("MenuC.aspx");
            }
        }
    }
}