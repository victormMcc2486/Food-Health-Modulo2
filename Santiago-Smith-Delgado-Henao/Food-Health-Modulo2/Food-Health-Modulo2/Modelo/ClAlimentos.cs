using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ClAlimentos
    {

        public static object ListaAlimentos()
        {
            EntidadDataContext context = new EntidadDataContext();

            var query = from u in context.alimentos
                        select new
                        {
                            Nombre = u.nombre,
                            Tipo = u.idTipo,
                            Detalles = u.detalles
                        };

            return query;
        }


        public static int AgregarAlimentos(string nombre, int tipo, string detalles)
        {
            int resultado = 0;

            EntidadDataContext entity = new EntidadDataContext();
            alimentos Alimentos = Buscar_Documento_Alimentos(nombre);

            if (Alimentos == null)
            {
                Alimentos = new alimentos();
                Alimentos.nombre = nombre;
                Alimentos.idTipo = tipo;
                Alimentos.detalles = detalles;

                try
                {
                    entity.alimentos.InsertOnSubmit(Alimentos);
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


        public static alimentos Buscar_Documento_Alimentos(string nombre)
        {
            EntidadDataContext context = new EntidadDataContext();
            alimentos Alimentos = null;

            var query = context.alimentos.Where(p => p.nombre == nombre).Select(p => p);

            if (query.Count() > 0)
            {
                Alimentos = query.First();
            }
            return Alimentos;
        }



        public static int ModificarAlimento(int id, string nombre, int tipo, string detalles)
        {
            int resultado = 0;

            EntidadDataContext entity = new EntidadDataContext();


            alimentos Alimentos = entity.alimentos.Where(c => c.idAlimentos == id).Select(c => c).First();
            Alimentos.nombre = nombre;
            Alimentos.idTipo = tipo;
            Alimentos.detalles = detalles;

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


        public static bool EliminarAlimento(int id)
        {
            EntidadDataContext entity = new EntidadDataContext();
            bool resultado = true;

            alimentos Alimentos = entity.alimentos.Where(p => p.idAlimentos == id).Select(p => p).First();

            try
            {
                entity.alimentos.DeleteOnSubmit(Alimentos);
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