using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ClChef
    {

        public static object ListaChef()
        {
            EntidadDataContext context = new EntidadDataContext();

            var query = from u in context.chef
                        select new
                        {
                            Cedula = u.documento,
                            Nombre = u.nombres,
                            Correo = u.correo,
                            Dirección = u.direccion,
                            Telefono = u.telefono
                        };

            return query;
        }


        public static int AgregarChef(string documento, string correo, string nombres,
           string direccion, string telefono)
        {
            int resultado = 0;

            EntidadDataContext entity = new EntidadDataContext();
            chef Chef = Buscar_Documento_Chef(documento);

            if (Chef == null)
            {
                Chef = new chef();
                Chef.documento = documento;
                Chef.correo = correo;
                Chef.nombres = nombres;
                Chef.direccion = direccion;
                Chef.telefono = telefono;

                try
                {
                    entity.chef.InsertOnSubmit(Chef);
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

        public static chef Buscar_Documento_Chef(string documento)
        {
            EntidadDataContext context = new EntidadDataContext();
            chef Chef = null;

            var query = context.chef.Where(p => p.documento == documento).Select(p => p);

            if (query.Count() > 0)
            {
                Chef = query.First();
            }
            return Chef;
        }
    }
}
