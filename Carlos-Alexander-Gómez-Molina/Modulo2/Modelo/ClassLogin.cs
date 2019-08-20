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
            var query = context.SysUser.Where(p => p.users == user && p.pass == pass).Select(p => p);

            var query1 = from p in context.SysUser
                        where p.users == user && p.pass == pass
                        select p;

            if (query.Count() > 0)
            {
                userID = query.First().id;
            }

            return userID;
        }
    }
}
