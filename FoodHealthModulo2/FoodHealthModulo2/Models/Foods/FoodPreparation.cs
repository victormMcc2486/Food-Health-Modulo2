using System;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Foods
{
    public class FoodPreparation
    {
        [Key]
        [Display(Name = "Preparación Alimento")]
        public int FoodPreparationID { get; set; }

        [Display(Name = "Alimento")]
        public int FoodID { get; set; }


        [Display(Name = "Fecha Máxima")]
        [Required(ErrorMessage = "Debe ingresar una {0})")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime DateMax { get; set; }


        [Display(Name = "Fecha Mínima")]
        [Required(ErrorMessage = "Debe ingresar una {0})")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime DateMin{ get; set; }

        [Display(Name = "Detalle")]
        [Required(ErrorMessage = "Debe Ingresar un {0}")]
        public string Details { get; set; }

        public virtual Food Food { get; set; }
    }
}