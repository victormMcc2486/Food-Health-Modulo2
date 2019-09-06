using System;
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
            OcultarModal();
        }

        private void OcultarModal()
        {

            modal.Visible = false;
        }


        protected void Lista()
        {
            gvPersonas.DataSource = ClUsuario.ListaClientes();
            gvPersonas.DataBind();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(hfCliente.Value);
            string documento = txtDocumento.Text;
            string correo = txtEmail.Text;
            string nombres = txtNombre.Text;
            string direccion = txtDireccion.Text;
            string telefono = txtTelefono.Text;


            int resultado = ClUsuario.ModificarCliente(id, documento, correo, nombres, direccion, telefono);

            if (resultado == 2)
            {
                Response.Write("<script>alert('Ocurrió un error')</script>");
            }
            else
            {
                Response.Write("<script>alert('Cliente modificado con éxito')</script>");
            }
            Limpiar();
            Lista();
        }
        private void AsignarCampos()
        {
            string documento = hfDocumento.Value;
            clientes Clientes = ClUsuario.Buscar_Documento_Cliente(documento);

            hfCliente.Value = Clientes.idCliente.ToString();

            txtDocumento.Text = Clientes.documento;
            txtDireccion.Text = Clientes.direccion;
            txtEmail.Text = Clientes.correo;
            txtNombre.Text = Clientes.nombres;
            txtTelefono.Text = Clientes.telefono;
            hfidUsuario.Value = Clientes.idUsuario.ToString();

        }

        private void MostrarModal()
        {
            modal.Visible = true;
        }

        protected void gvPersonas_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = gvPersonas.SelectedRow;
            hfDocumento.Value = fila.Cells[1].Text;
            AsignarCampos();
            MostrarModal();
        }

        public void Limpiar()
        {
            txtDocumento.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtTelefono.Text = string.Empty;
        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int idCliente = int.Parse(hfCliente.Value);
            int idUsuario = int.Parse(hfidUsuario.Value);
            bool resultado = ClUsuario.EliminarCliente(idCliente, idUsuario);

            if (resultado == false)
            {
                Response.Write("<script>alert('Ocurrió un error al eliminar')</script>");
            }
            else
            {
                Response.Write("<script>alert('Cliente eliminado con éxito')</script>");
            }
            Limpiar();
            Lista();
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}