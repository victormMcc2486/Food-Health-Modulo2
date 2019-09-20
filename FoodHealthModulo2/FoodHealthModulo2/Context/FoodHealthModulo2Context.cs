using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace FoodHealthModulo2.Context
{
    public class FoodHealthModulo2Context : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public FoodHealthModulo2Context() : base("name=FoodHealthModulo2Context")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
        }

        public System.Data.Entity.DbSet<FoodHealthModulo2.Models.Foods.FoodType> FoodTypes { get; set; }

        public System.Data.Entity.DbSet<FoodHealthModulo2.Models.Foods.Food> Foods { get; set; }

        public System.Data.Entity.DbSet<FoodHealthModulo2.Models.Foods.FoodDetail> FoodDetails { get; set; }

        public System.Data.Entity.DbSet<FoodHealthModulo2.Models.Foods.FoodPreparation> FoodPreparations { get; set; }
    }
}
