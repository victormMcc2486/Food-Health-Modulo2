using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Usuarios
    {
        public static persona BuscarporId( int userID)
        {
            EntidadDataContext context = new EntidadDataContext();
            persona persona = null;

            var query = context.persona.Where(p => p.id == userID).Select(p => p);

            if(query.Count() > 0)
            {
                persona = query.First();
            }
            return persona;
                 
        }
        public static object ListaPersona()
        {
            EntidadDataContext context = new EntidadDataContext();

            var query = from u in context.persona
                        select new
                        {
                            Documento = u.documento,
                            Nombre = u.nombre,
                            Correo = u.coreo
                        };

            return query;

        }
    }
}
