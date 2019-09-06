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
                            Correo = u.correo,
                            Nombre = u.nombres,
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
            cocineros Cocineros = null;

            var query = context.cocineros.Where(p => p.documento == documento).Select(p => p);

            if (query.Count() > 0)
            {
                Cocineros = query.First();
            }
            return Cocineros;
        }
        public static int ModificarCocineros(int id, string documento, string correo, string nombres,
           string direccion, string telefono)
        {
            int resultado = 0;

            EntidadDataContext entity = new EntidadDataContext();


            cocineros Cocineros = entity.cocineros.Where(c => c.idCocineros == id).Select(c => c).First();
            Cocineros.documento = documento;
            Cocineros.correo = correo;
            Cocineros.nombres = nombres;
            Cocineros.direccion = direccion;
            Cocineros.telefono = telefono;

            try
            {
                entity.SubmitChanges();

                resultado = 3;
                //Exitoooo
            }
            catch (Exception)
            {
                resultado = 2;
                //Error al guardar
            }

            return resultado;
        }


        public static bool EliminarCocinero(int idCocinero)
        {
            EntidadDataContext entity = new EntidadDataContext();
            bool resultado = true;

            cocineros Cocineros = entity.cocineros.Where(p => p.idCocineros == idCocinero).Select(p => p).First();

            try
            {
                entity.cocineros.DeleteOnSubmit(Cocineros);
                entity.SubmitChanges();
            }
            catch (Exception)
            {
                resultado = false;
            }

            return resultado;
        }



    }
}
