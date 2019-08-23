using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ClUsuario
    {

        public static personas BuscarID(int userID)
        {
            EntidadDataContext context = new EntidadDataContext();
            personas persona = null;

            var query = context.personas.Where(p => p.idPersona == userID).Select(p => p);

            if (query.Count() > 0)
            {

                persona = query.First();
            }
            return persona;
        }

        public static object ListaPersona()
        {
            EntidadDataContext context = new EntidadDataContext();

            var query = from u in context.personas
                        select new
                        {
                            Cedula = u.documento,
                            Nombre = u.nombres,
                            Correo = u.correo,
                            Dirección = u.direccion                           
                        };

            return query;
        }
    }
}
