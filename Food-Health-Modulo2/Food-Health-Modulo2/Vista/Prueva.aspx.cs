using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
namespace Vista
{
    public partial class Prueva : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
           
            Lista();
        }

        private void OcultarDiv()
        {

            modificar.Visible = false;
        }

        protected void Lista()
        {
            gvPersonas.DataSource = ClChef.ListaChef();
            gvPersonas.DataBind();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(hfCliente.Value);
            string documento = txtDocumento.Text;
            string correo = txtEmail.Text;
            string nombres = txtNombre.Text;
            string direccion = txtDireccion.Text;
            string telefono = txtTelefono.Text;


            int resultado = ClChef.ModificarChef(id, documento, correo, nombres, direccion, telefono);

            if (resultado == 2)
            {
                Response.Write("<script>alert('Ocurrió un error')</script>");
            }
            else
            {
                Response.Write("<script>alert('Chef modificado con éxito')</script>");
            }
            Limpiar();
            Lista();
        }
        private void AsignarCampos()
        {
            string documento = hfDocumento.Value;
            chef Clientes = ClChef.Buscar_Documento_Chef(documento);
            hfCliente.Value = Clientes.idChef.ToString();

            txtDocumento.Text = Clientes.documento;
            txtDireccion.Text = Clientes.direccion;
            txtEmail.Text = Clientes.correo;
            txtNombre.Text = Clientes.nombres;
            txtTelefono.Text = Clientes.telefono;

            modificar.Visible = true;
        }

        protected void gvPersonas_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = gvPersonas.SelectedRow;
            hfDocumento.Value = fila.Cells[1].Text;
            AsignarCampos();
            Response.Write("<script>windows.location('#modal1')</script>");

        }
        public void Limpiar()
        {
            txtDocumento.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtTelefono.Text = string.Empty;
        }
    }
}