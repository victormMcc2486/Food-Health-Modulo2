using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Foods
{
    public class FoodType
    {
        [Key]
        [Display(Name = "Tipo de Alimento")]
        public int FoodTypeID { get; set; }


        [Display(Name = "Tipo de Alimento")]
        [Required(ErrorMessage = "Debe Ingresar un {0}")]
        public string Name { get; set; }

        public virtual ICollection<Food> Foods { get; set; }
        
    }
}