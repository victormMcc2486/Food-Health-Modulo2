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
            list.Add(new Customer { CustomerId = 0, FirstName = "[Seleccione un Cliente]" });
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

        // GET: foods
        public ActionResult AddFood()
        {
            var list = Dd.Foods.ToList();
            list.Add(new FoodPlato { FoodID = 0, Name = "[Seleccione un Alimento]" });
            list = list.OrderBy(C => C.Name).ToList();
            ViewBag.FoodID = new SelectList(list, "FoodID", "Name");
            return View();
        }

        [HttpPost]
        public ActionResult AddFood(FoodPlato foodPlato)
        {
            var platoView = Session["platoView"] as PlatoView;
            var foodId = int.Parse(Request["foodId"]);

            if (foodId == 0)
            {
                var list = Dd.Foods.ToList();
                list.Add(new FoodPlato { FoodID = 0, Name = "[Seleccione un Alimento]" });
                list = list.OrderBy(C => C.Name).ToList();
                ViewBag.FoodID = new SelectList(list, "FoodID", "Name");
                ViewBag.Error = "Seleccione un Alimento";

            }
            //Validar xistencia de producto

            var food = Dd.Foods.Find(foodId);

            if (food == null)
            {
                var list = Dd.Foods.ToList();
                list.Add(new FoodPlato { FoodID = 0, Name = "[Seleccione un Alimento]" });
                list = list.OrderBy(C => C.Name).ToList();
                ViewBag.FoodID = new SelectList(list, "FoodID", "Name");
                ViewBag.Error = "Alimento no Existe";
                return View(foodPlato);
            }

            //Adicionar el producto a la orden
            foodPlato = platoView.foods.Find(p => p.FoodID == foodId);

            if (foodPlato == null)
            {

                foodPlato = new FoodPlato
                {
                    Name = food.Name,
                    FoodID = food.FoodID,
                    Quantity = float.Parse(Request["Quantity"]),

                };

                platoView.foods.Add(foodPlato);
            }
            else
            {
                foodPlato.Quantity += float.Parse(Request["Quantity"]);
            }

            var listC = Dd.Customers.ToList();  
            listC.Add(new Customer { CustomerId = 0, FirstName = "[Seleccione un Cliente]" });
            listC = listC.OrderBy(C => C.FullName).ToList();
            ViewBag.CustomerId = new SelectList(listC, "CustomerId", "FullName");

            return View("NewPlato", platoView);

        }

    }
}