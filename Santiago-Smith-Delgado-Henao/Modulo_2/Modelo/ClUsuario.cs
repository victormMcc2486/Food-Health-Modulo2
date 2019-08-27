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

        public static int AgregarUsuario(string documento, string correo, string nombres,
            string direccion)
        {
            int resultado = 0;

            EntidadDataContext entity = new EntidadDataContext();
            personas persona = Buscar_Documento(documento);

            if (persona == null)
            {
                persona = new personas();
                persona.documento = documento;
                persona.correo = correo;
                persona.nombres = nombres;
                persona.direccion = direccion;

                try
                {
                    entity.personas.InsertOnSubmit(persona);
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

        public static personas Buscar_Documento(string documento)
        {
            EntidadDataContext context = new EntidadDataContext();
            personas persona = null;

            var query = context.personas.Where(p => p.documento == documento).Select(p => p);

            if (query.Count() > 0)
            {
                 persona = query.First();
            } 
            return persona;
        }
    }
}
