using FoodHealthModulo2.Context;
using FoodHealthModulo2.Models.Foods;
using FoodHealthModulo2.Models.Profiles;
using FoodHealthModulo2.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FoodHealthModulo2.Controllers
{
    public class PlateController : Controller
    {
        FoodHealthModulo2Context Dd = new FoodHealthModulo2Context();
        // GET: del custumer
        public ActionResult NewPlato()
        {
            var platoView = new PlatoView();
            platoView.Customer = new Customer();
            platoView.foods = new List<FoodPlato>();
            Session["platoView"] = platoView;


            var list = Dd.Customers.ToList();
            list = list.OrderBy(C => C.FullName).ToList();
            ViewBag.CustomerId = new SelectList(list, "CustomerId", "FullName");

            return View(platoView);
        }



        [HttpPost]
        public ActionResult newPlato(PlatoView platoView)
        {
            var list = Dd.Customers.ToList();
            list.Add(new Customer { CustomerId = 0, FirstName = "[Seleccione un Cliente]" });
            list = list.OrderBy(C => C.FullName).ToList();
            ViewBag.CustomerId = new SelectList(list, "CustomerId", "FullName");

            return View(platoView);
        }

        [HttpPost]
        public ActionResult AddFood(FoodPlato foodPlato)
        {
            var list = Dd.Foods.ToList();
            list.Add(new FoodPlato { FoodID = 0, Name = "[Seleccione un Producto]" });
            list = list.OrderBy(C => C.Name).ToList();
            ViewBag.FoodID = new SelectList(list, "FoodID", "Name");

            return View(foodPlato);
        }
        // GET: foods
        public ActionResult AddFood()
        {
            var list = Dd.Foods.ToList();
            list = list.OrderBy(C => C.Name).ToList();
            ViewBag.FoodID = new SelectList(list, "FoodID", "Name");
            return View();
        }

        [HttpPost]
        public ActionResult AddFoods(FoodPlato foodPlato)
        {
            var platoView = Session["platoView"] as PlatoView;
            var foodId = int.Parse(Request["foodId"]);

            if (foodId == 0)
            {
                var list = Dd.Foods.ToList();
                list.Add(new FoodPlato { FoodID = 0, Name = "[Seleccione un Alimento]" });
                list = list.OrderBy(C => C.Name).ToList();
                ViewBag.FoodID = new SelectList(list, "FoodID", "Name");

            }

            return View(foodPlato);
        }

    }
}