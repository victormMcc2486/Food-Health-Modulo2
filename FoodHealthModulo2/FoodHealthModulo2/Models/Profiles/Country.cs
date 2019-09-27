using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Profiles
{
    public class Country
    {
        [Key]
        [Display(Name = "País")]
        public int CountryID { get; set; }


        [Display(Name = "País")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string NameCountry { get; set; }

        public virtual ICollection<City> Cities { get; set; }
    }
}