using FoodHealthModulo2.Models.Foods;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Menu
{
    public class PlateDetail
    {

        [Key]
        [Display(Name = "Detalle Plato")]
        public int PlateDetailID { get; set; }


        [Display(Name = "Plato")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public int PlateID { get; set; }


        [Display(Name = "Alimento")]
        public int FoodID { get; set; }


        public virtual Food Food { get; set; }
        public virtual Plate Plate { get; set; }

        public virtual ICollection<PlateProduction> PlateProductions { get; set; }
    }
}