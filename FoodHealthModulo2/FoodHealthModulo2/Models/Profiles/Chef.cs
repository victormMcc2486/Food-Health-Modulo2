using FoodHealthModulo2.Models.Menu;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Profiles
{
    public class Chef
    {
        [Key]
        [Display(Name = "Cocinero")]
        public int ChefID { get; set; }

        [Display(Name = "Tipo Documento")]
        public int DocumentTypeID { get; set; }

        [Display(Name = "Ciudad")]
        public int CityID { get; set; }

        [Display(Name = "Contrato")]
        public int ContractID { get; set; }

        [Display(Name = "Usuario")]
        public int UserID { get; set; }

        [Display(Name = "Documento")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        [StringLength(15, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public char Documento { get; set; }

        [Display(Name = "Nombres")]
        [DataType(DataType.Text)]
        [Required(ErrorMessage = "Debe ingresar los {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string FirstName { get; set; }

        [Display(Name = "Apellidos")]
        [DataType(DataType.Text)]
        [Required(ErrorMessage = "Debe ingresar los {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string LastName { get; set; }

        [Display(Name = "Teléfono")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        [StringLength(15, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public char Phone { get; set; }

        [Display(Name = "Dirección")]
        [DataType(DataType.Text)]
        [Required(ErrorMessage = "Debe ingresar la {0}")]
        [StringLength(30, ErrorMessage = "El campo {0} debe tener entre (2) y (1) caracteres", MinimumLength = 3)]
        public string Address { get; set; }


        public virtual ICollection<PlateProduction> PlateProductions { get; set; }
        public virtual DomentType DomentType { get; set; }
        public virtual City City { get; set; }
        public virtual Users User { get; set; }
        public virtual Contract Contract { get; set; }
    }
}