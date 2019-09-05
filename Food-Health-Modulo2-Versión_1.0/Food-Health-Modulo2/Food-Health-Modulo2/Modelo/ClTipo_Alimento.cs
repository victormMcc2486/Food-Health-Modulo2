using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ClTipo_Alimento
    {
        public static object ListaTipo_Alimentos()
        {
            EntidadDataContext context = new EntidadDataContext();

            var query = from u in context.tipo_alimentos
                        select new
                        {
                            Nombre = u.nombretipo
                        };

            return query;
        }


        public static int AgregarTipo_Alimento(string nombre)
        {
            int resultado = 0;

            EntidadDataContext entity = new EntidadDataContext();
            tipo_alimentos Tipo_Alimentos = Buscar_Documento_Tipo_Alimentos(nombre);

            if (Tipo_Alimentos == null)
            {
                Tipo_Alimentos = new tipo_alimentos();
                Tipo_Alimentos.nombretipo = nombre;

                try
                {
                    entity.tipo_alimentos.InsertOnSubmit(Tipo_Alimentos);
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

        public static tipo_alimentos Buscar_Documento_Tipo_Alimentos(string nombre)
        {
            EntidadDataContext context = new EntidadDataContext();
            tipo_alimentos Tipo_Alimentos = null;

            var query = context.tipo_alimentos.Where(p => p.nombretipo == nombre).Select(p => p);

            if (query.Count() > 0)
            {
                Tipo_Alimentos = query.First();
            }
            return Tipo_Alimentos;
        }

        public static int Modificar_Tipo_Alimento(int id, string nombre)
        {
            int resultado = 0;

            EntidadDataContext entity = new EntidadDataContext();


            tipo_alimentos Tipo_Alimentos = entity.tipo_alimentos.Where(c => c.idTipo == id).Select(c => c).First();
            Tipo_Alimentos.nombretipo = nombre;

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

        public static bool Eliminar_Tipo_Alimento(int id)
        {
            EntidadDataContext entity = new EntidadDataContext();
            bool resultado = true;

            tipo_alimentos Tipo_Alimentos = entity.tipo_alimentos.Where(p => p.idTipo == id).Select(p => p).First();

            try
            {
                entity.tipo_alimentos.DeleteOnSubmit(Tipo_Alimentos);
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
