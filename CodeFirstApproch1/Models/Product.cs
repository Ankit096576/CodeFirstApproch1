using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace CodeFirstApproch1.Models
{
    [Table("tblProducts")]
    public class Product
    {
        [Key]
        public int ProductId { get; set; }
        public String ProductName { get; set; }
        public int ProductPrice { get; set; }
        public Category Category { get; set; }

    }
}