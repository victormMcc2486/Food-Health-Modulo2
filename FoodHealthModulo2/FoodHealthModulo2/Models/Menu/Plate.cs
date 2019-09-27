using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Menu
{
    public class Plate
    {
        [Key]
        [Display(Name = "Plato")]
        public int PlateID { get; set; }


        [Display(Name = "Cliente")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string Customer { get; set; }


        [Display(Name = "Fecha de Plato")]
        [Required(ErrorMessage = "Debe ingresar una {0})")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime DatePlate { get; set; }


        public virtual ICollection<PlateDetail> PlateDetails { get; set; }


    }
}