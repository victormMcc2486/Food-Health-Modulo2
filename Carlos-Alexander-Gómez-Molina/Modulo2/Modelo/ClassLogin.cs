using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ClassLogin
    {
        public static int IniciarSesion(String user, String pass)
        {
            EntidadDataContext context = new EntidadDataContext();
            int userID = 0;
            var query = context.usuario.Where(p => p.Usuario1 == user && p.Clave == pass).Select(p => p);

            var query1 = from p in context.usuario
                        where p.Usuario1 == user && p.Clave == pass
                        select p;

            if (query.Count() > 0)
            {
                userID = query.First().idRol;
            }

            return userID;
        }
    }
}
    