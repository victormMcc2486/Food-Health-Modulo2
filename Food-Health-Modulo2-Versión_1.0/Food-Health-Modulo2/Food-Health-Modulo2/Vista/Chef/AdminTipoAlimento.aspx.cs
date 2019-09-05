using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista.Chef
{
    public partial class AdminTipoAlimento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;

            int Registro = ClTipo_Alimento.AgregarTipo_Alimento(nombre);

            if (Registro == 1)
            {
                Response.Write("<script>alert('Tipo Alimento ya existe')</script>");
            }
            else if (Registro == 2)
            {
                Response.Write("<script>alert('Ocurrió un error al registrarse')</script>");
            }
            else if (Registro == 3)
            {
                Response.Write("<script>alert('Tipo Alimento registrado con éxito')</script>");
            }

            Limpiar();
        }

        public void Limpiar()
        {
            txtNombre.Text = string.Empty;
        }
    }
}