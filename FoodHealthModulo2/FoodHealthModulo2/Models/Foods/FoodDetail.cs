using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Foods
{
    public class FoodDetail
    {
        [Key]
        [Display(Name = "Detalle Alimento")]
        public int FoodDetailID { get; set; }

        [Display(Name = "Alimento")]
        public int FoodID { get; set; }

        [Display(Name = "Calcio")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal Calciumm { get; set; }

        [Display(Name = "Calorias")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal Calories { get; set; }

        [Display(Name = "Calorias Grasas")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal FatCalories { get; set; }

        [Display(Name = "Carbohidratos")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal Carbohydrates { get; set; }

        [Display(Name = "Colesterol")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal Cholesterol { get; set; }

        [Display(Name = "Grasa")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal Grease { get; set; }

        [Display(Name = "Hierro")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal Iron { get; set; }

        [Display(Name = "Proteina")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal Protein { get; set; }

        [Display(Name = "Sodio")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal Sodium { get; set; }

        [Display(Name = "Vitamina A")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal VitaminA { get; set; }

        [Display(Name = "Vitamina C")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal VitaminC { get; set; }


        public virtual Food Food { get; set; }
    }
}