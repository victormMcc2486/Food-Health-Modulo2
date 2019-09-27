using FoodHealthModulo2.Models.Menu;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Foods
{
    public class Food
    {
        [Key]
        [Display(Name = "Alimento")]
        public int FoodID { get; set; }


        [Display(Name = "Tipo Alimento")]
        public int FoodTypeID { get; set; }


        [Display(Name = "Alimento")]
        [Required(ErrorMessage = "Debe Ingresar un {0}")]
        public string Name { get; set; }


        public virtual FoodType FoodType { get; set; }

        public virtual ICollection<FoodDetail> FoodDetails { get; set; }

        public virtual ICollection<PlateDetail> PlateDetails { get; set; }

        public virtual ICollection<FoodPreparation> FoodPreparations { get; set; }
    }
}