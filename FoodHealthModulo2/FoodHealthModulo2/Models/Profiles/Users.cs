using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FoodHealthModulo2.Models.Profiles
{
    public class Users
    { 
        [Key]
        [Display(Name = "Usuario")]
        public int UserID { get; set; }


        [Display(Name = "Perfil")]
        public int ProfileID { get; set; }


        [Display(Name = "Email")]
        [DataType(DataType.EmailAddress)]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string User { get; set; }

        [Display(Name = "Clave")]
        [DataType(DataType.Password)]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string Password { get; set; }


        public UserState UserState { get; set; }

        public virtual Profile Profile { get; set; }
        public virtual ICollection<MasterChef> MasterChefs { get; set; }
        public virtual ICollection<Chef> Chefs { get; set; }
        public virtual ICollection<Administrator> Administrators { get; set; }
    }
}