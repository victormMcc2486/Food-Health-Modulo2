using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FoodHealthModulo2.Models.Foods
{
    public class FoodPlato : Food
    {
        [Display(Name = "Cantidad")]
        public float Quantity { get; set; }
    }
}