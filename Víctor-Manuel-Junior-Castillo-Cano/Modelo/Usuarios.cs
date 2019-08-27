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
    }
}
