using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ClLogin
    {
        public static int IniciarSesion(String user, String clave)
        {
            EntidadesDataContext getContext = new EntidadesDataContext();

            var query = getContext.Usuario.Where(usu => usu.Usuario1 == user && usu.Clave == clave).Select(usu => usu);

            int IDRol = 0;

            if(query.Count() > 0)
            {
                IDRol = query.First().idRol;
            }

            return IDRol;
        }
    }
}
