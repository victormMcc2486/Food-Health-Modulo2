using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Profiles
{
    public class DomentType
    {
        [Key]
        [Display(Name = "Documento")]
        public int DocumentTypeID { get; set; }

        [Display(Name = "Documento")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string NameDocument { get; set; }

        public virtual ICollection<MasterChef> MasterChefs { get; set; }
        public virtual ICollection<Chef> Chefs { get; set; }
        public virtual ICollection<Administrator> Administrators { get; set; }
    }
}