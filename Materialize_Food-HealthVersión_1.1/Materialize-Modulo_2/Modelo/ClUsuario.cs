using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ClUsuario
    {

        public static object ListaClientes()
        {
            EntidadDataContext context = new EntidadDataContext();

            var query = from u in context.clientes
                        select new
                        {
                            Cedula = u.documento,
                            Nombre = u.nombres,
                            Correo = u.correo,
                            Dirección = u.direccion,
                            Teléfono = u.telefono
                        };

            return query;
        }


        public static int AgregarCliente(string documento, string correo, string nombres,
           string direccion, string telefono, string usu, string clave)
        {
            int resultadoClientes = 0;

            EntidadDataContext entity = new EntidadDataContext();
            clientes Clientes = Buscar_Documento_Cliente(documento);
            usuarios Usuarios = Buscar_Documento_Usuario(usu);



            if (Usuarios == null)
            {

                Usuarios = new usuarios();
                Usuarios.usuario = usu;
                Usuarios.clave = clave;
                Usuarios.idRol = 2;
                try
                {
                    entity.usuarios.InsertOnSubmit(Usuarios);
                    entity.SubmitChanges();

                    if (Clientes == null)
                    {
                        int idUsu = Buscar_IDUsu(usu);

                        Clientes = new clientes();
                        Clientes.documento = documento;
                        Clientes.correo = correo;
                        Clientes.nombres = nombres;
                        Clientes.direccion = direccion;
                        Clientes.telefono = telefono;
                        Clientes.idUsuario = idUsu;

                        entity.clientes.InsertOnSubmit(Clientes);
                        entity.SubmitChanges();

                        resultadoClientes = 3;
                    }
                    else resultadoClientes = 1;

                }
                catch (Exception)
                {
                    resultadoClientes = 2;
                }
            }
            else
            {
                resultadoClientes = 1;
                //Ya existe en la base de datos
            }

            return resultadoClientes;
        }


        public static int AgregarUsuario(string usu, string pass)
        {
            int resultado = 0;

            EntidadDataContext entity = new EntidadDataContext();
            usuarios Clientes = Buscar_Documento_Usuario(usu);

            if (Clientes == null)
            {
                Clientes = new usuarios();
                Clientes.usuario = usu;
                Clientes.clave = pass;
                Clientes.idRol = 2;

                try
                {
                    entity.usuarios.InsertOnSubmit(Clientes);
                    entity.SubmitChanges();

                    resultado = 3;
                    //Exitoooo
                }
                catch (Exception)
                {
                    resultado = 2;
                    //Error al guardar
                }
            }
            else
            {
                resultado = 1;
                //Ya existe en la base de datos
            }

            return resultado;
        }

        public static clientes Buscar_Documento_Cliente(string documento)
        {
            EntidadDataContext context = new EntidadDataContext();
            clientes Clientes = null;

            var query = context.clientes.Where(p => p.documento == documento).Select(p => p);

            if (query.Count() > 0)
            {
                Clientes = query.First();
            }
            return Clientes;
        }

        public static usuarios Buscar_Documento_Usuario(string user)
        {
            EntidadDataContext context = new EntidadDataContext();
            usuarios Clientes = null;

            var query = context.usuarios.Where(p => p.usuario == user).Select(p => p);

            if (query.Count() > 0)
            {
                Clientes = query.First();
            }
            return Clientes;
        }
        public static int Buscar_IDUsu(string usu)
        {
            EntidadDataContext context = new EntidadDataContext();
            int Resultado = 0;

            var query = context.usuarios.Where(p => p.usuario == usu).Select(p => p);

            if (query.Count() > 0)
            {
                Resultado = query.First().idUsuario;
            }
            return Resultado;
        }
    }
}
