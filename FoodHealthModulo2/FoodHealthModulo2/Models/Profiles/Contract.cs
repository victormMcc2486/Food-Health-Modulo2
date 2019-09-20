using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Profiles
{
    public class Contract
    {
        [Key]
        [Display(Name = "Contrato")]
        public int ContractID { get; set; }


        [Display(Name = "Contrato")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public string NameContract { get; set; }


        [Display(Name = "Sueldo")]
        [Required(ErrorMessage = "Debe ingresar el {0}")]
        public decimal Salary { get; set; }

        public virtual ICollection<MasterChef> MasterChefs { get; set; }

        public virtual ICollection<Chef> Chefs { get; set; }
    }
}