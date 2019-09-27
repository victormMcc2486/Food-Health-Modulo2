using FoodHealthModulo2.Models.Foods;
using FoodHealthModulo2.Models.Profiles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodHealthModulo2.ViewModels
{
    public class PlatoView
    {

        public Customer Customer { get; set; }
        public FoodPlato food{ get; set; }
        public List<FoodPlato> foods { get; set; }
    }
}