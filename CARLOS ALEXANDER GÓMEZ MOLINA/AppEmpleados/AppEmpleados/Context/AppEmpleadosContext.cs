﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace AppEmpleados.Models
{
    public class AppEmpleadosContext : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public AppEmpleadosContext() : base("name=AppEmpleadosContext")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
        }

        public System.Data.Entity.DbSet<AppEmpleados.Models.Employee> Employees { get; set; }

        public System.Data.Entity.DbSet<AppEmpleados.Models.DocumentType> DocumentTypes { get; set; }

        public System.Data.Entity.DbSet<AppEmpleados.Models.Supplier> Suppliers { get; set; }

        public System.Data.Entity.DbSet<AppEmpleados.Models.Product> Products { get; set; }

        public System.Data.Entity.DbSet<AppEmpleados.Models.Customer> Customers { get; set; }

        public System.Data.Entity.DbSet<AppEmpleados.Models.SupplierProduct> SupplierProducts { get; set; }
    }
}
