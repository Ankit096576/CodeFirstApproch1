using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace CodeFirstApproch1.Models
{
    public class NorthWindContext : DbContext
    {
       
        public NorthWindContext()
            :base("Name=NorthWindConnection")
        {
            
        }
        public DbSet<Category> CategoriesTable { get; set; }
        public DbSet<Product> ProductsTable { get; set; }
         
    }
}