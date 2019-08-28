using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Usuarios
    {
        public static Persona BuscarID(int IDPersona)
        {
            EntidadesDataContext getContext = new EntidadesDataContext();
            Persona persona = null;

            var query = getContext.Persona.Where(p => p.idPersona == IDPersona).Select(p => p);

            if (query.Count() > 0)
            {
                persona = query.First();
            }

            return persona;
        }
        public static object ListarClientes()
        {
            EntidadesDataContext getContext = new EntidadesDataContext();

            var query = from usu in getContext.Persona
                        select new
                        {
                            Nombre = usu.Nombre,
                            Direccion = usu.Direccion,
                            Documento = usu.Documento,
                            Telefono = usu.Telefono
                        };          

            return query;
        }
        public static object ListarEmpleados()
        {
            EntidadesDataContext getContext = new EntidadesDataContext();

            var query = from usu in getContext.Empleado
                        select new
                        {
                            Nombre = usu.Nombre,
                            Documento = usu.Documento
                        };

            return query;
        }
        public static object ListarUsuarios()
        {
            EntidadesDataContext getContext = new EntidadesDataContext();

            var query = from usu in getContext.Usuario
                        select new
                        {
                            idUsuario = usu.idUsuario,
                            Username = usu.Usuario1,
                            rol = usu.idRol
                        };

            return query;
        }

        public static int RegistrarPersona(string Documento, string Nombre, string Direccion, 
            string Telefono, int idUsuario)
        {
            EntidadesDataContext entity = new EntidadesDataContext();
            int resultado = 0;
            Persona persona = BuscarPersona(Documento);

            if (persona == null)
            {
                try
                {
                    persona = new Persona();
                    persona.idUsuario = idUsuario;
                    persona.Nombre = Nombre;
                    persona.Documento = Documento;
                    persona.Direccion = Direccion;
                    persona.Telefono = Telefono;

                    entity.Persona.InsertOnSubmit(persona);
                    entity.SubmitChanges();

                    resultado = 1;
                }
                catch (Exception)
                {
                    resultado = 2;
                }
            }
            else
            {
                resultado = 3;
            }

            return resultado;
        }
        public static Persona BuscarPersona(string documento)
        {
            EntidadesDataContext context = new EntidadesDataContext();
            Persona persona = null;

            var query = context.Persona.Where(p => p.Documento == documento).Select(p => p);

            if (query.Count() > 0)
            {
                persona = query.First();
            }

            return persona;
        }
        
    }
}
