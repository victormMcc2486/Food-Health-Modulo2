using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Profiles
{
    public class City
    {
        [Key]
        [Display(Name = "Ciudad")]
        public int CityID { get; set; }

        [Display(Name = "País")]
        public int CountryID { get; set; }

        [Display(Name = "Ciudad")]
        [Required(ErrorMessage = "Debe ingresar la {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string NameCity { get; set; }

        public virtual Country Country { get; set; }
        public virtual ICollection<MasterChef> MasterChefs  { get; set; }
        public virtual ICollection<Chef> Chefs { get; set; }
        public virtual ICollection<Administrator> Administrators { get; set; }
    }
}