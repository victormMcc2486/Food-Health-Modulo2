using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista.Admin
{
    public partial class AdminAlimentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string detalles = txtDetalles.Text;
            int tipo = int.Parse(txtTipo.Text);

            int Registro = ClAlimentos.AgregarAlimentos(nombre, tipo, detalles);

            if (Registro == 1)
            {
                Response.Write("<script>alert('Alimento ya existe')</script>");
            }
            else if (Registro == 2)
            {
                Response.Write("<script>alert('Ocurrió un error al registrarse')</script>");
            }
            else if (Registro == 3)
            {
                Response.Write("<script>alert('Alimento registrado con éxito')</script>");
            }

            Limpiar();
        }

        public void Limpiar()
        {
            txtNombre.Text = string.Empty;
            txtDetalles.Text = string.Empty;
            txtTipo.Text = string.Empty;
        }
    }
}