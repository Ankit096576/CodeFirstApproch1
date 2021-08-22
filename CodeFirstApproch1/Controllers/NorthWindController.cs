using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CodeFirstApproch1.Models;

namespace CodeFirstApproch1.Controllers
{
   
    public class NorthWindController : Controller

    {
        NorthWindContext db = new NorthWindContext();
        public ActionResult Index()
        {
            db.CategoriesTable.ToList();
            db.ProductsTable.ToList();

            return View();
        }
    }
}