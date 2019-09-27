using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FoodHealthModulo2.Models.Profiles
{
    public class Profile
    {
        [Key]
        [Display(Name = "Perfil")]
        public int ProfileID { get; set; }


        [Display(Name = "Perfil")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string NameProfile { get; set; }

        public virtual ICollection<Users> Users { get; set; }
    }
}