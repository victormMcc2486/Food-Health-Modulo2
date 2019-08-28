using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ClCocineros
    {

        public static object ListaCocineros()
        {
            EntidadDataContext context = new EntidadDataContext();

            var query = from u in context.cocineros
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

        public static int AgregarCocineros(string documento, string correo, string nombres,
           string direccion, string telefono)
        {
            int resultado = 0;

            EntidadDataContext entity = new EntidadDataContext();
            cocineros persona = Buscar_Documento_Cocinero(documento);

            if (persona == null)
            {
                persona = new cocineros();
                persona.documento = documento;
                persona.correo = correo;
                persona.nombres = nombres;
                persona.direccion = direccion;
                persona.telefono = telefono;

                try
                {
                    entity.cocineros.InsertOnSubmit(persona);
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

        public static cocineros Buscar_Documento_Cocinero(string documento)
        {
            EntidadDataContext context = new EntidadDataContext();
            cocineros persona = null;

            var query = context.cocineros.Where(p => p.documento == documento).Select(p => p);

            if (query.Count() > 0)
            {
                persona = query.First();
            }
            return persona;
        }


    }
}
