using FoodHealthModulo2.Models.Profiles;
using System.ComponentModel.DataAnnotations;

namespace FoodHealthModulo2.Models.Menu
{
    public class PlateProduction
    {
        [Key]
        [Display(Name = "Producción")]
        public int PlateProductionID { get; set; }

        [Display(Name = "Plato")]
        public int PlateDetailID { get; set; }


        [Display(Name = "Chef")]
        public int MasterChefID { get; set; }

        [Display(Name = "Cocinero")]
        public int ChefID { get; set; }


        [Display(Name = "Estado")]
        public PlateState PlateState { get; set; }


        public virtual PlateDetail PlateDetail { get; set; }

        public virtual MasterChef MasterChef { get; set; }
        public virtual Chef Chef { get; set; }
    }
}