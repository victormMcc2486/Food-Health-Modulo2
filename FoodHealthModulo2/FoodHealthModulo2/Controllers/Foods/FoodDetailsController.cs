using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FoodHealthModulo2.Context;
using FoodHealthModulo2.Models.Foods;

namespace FoodHealthModulo2.Controllers.Foods
{
    public class FoodDetailsController : Controller
    {
        private FoodHealthModulo2Context db = new FoodHealthModulo2Context();

        // GET: FoodDetails
        public ActionResult Index()
        {
            var foodDetails = db.FoodDetails.Include(f => f.Food);
            return View(foodDetails.ToList());
        }

        // GET: FoodDetails/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FoodDetail foodDetail = db.FoodDetails.Find(id);
            if (foodDetail == null)
            {
                return HttpNotFound();
            }
            return View(foodDetail);
        }

        // GET: FoodDetails/Create
        public ActionResult Create()
        {
            ViewBag.FoodID = new SelectList(db.Foods, "FoodID", "Name");
            return View();
        }

        // POST: FoodDetails/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "FoodDetailID,FoodID,Calciumm,Calories,FatCalories,Carbohydrates,Cholesterol,Grease,Iron,Protein,Sodium,VitaminA,VitaminC")] FoodDetail foodDetail)
        {
            if (ModelState.IsValid)
            {
                db.FoodDetails.Add(foodDetail);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.FoodID = new SelectList(db.Foods, "FoodID", "Name", foodDetail.FoodID);
            return View(foodDetail);
        }

        // GET: FoodDetails/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FoodDetail foodDetail = db.FoodDetails.Find(id);
            if (foodDetail == null)
            {
                return HttpNotFound();
            }
            ViewBag.FoodID = new SelectList(db.Foods, "FoodID", "Name", foodDetail.FoodID);
            return View(foodDetail);
        }

        // POST: FoodDetails/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "FoodDetailID,FoodID,Calciumm,Calories,FatCalories,Carbohydrates,Cholesterol,Grease,Iron,Protein,Sodium,VitaminA,VitaminC")] FoodDetail foodDetail)
        {
            if (ModelState.IsValid)
            {
                db.Entry(foodDetail).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.FoodID = new SelectList(db.Foods, "FoodID", "Name", foodDetail.FoodID);
            return View(foodDetail);
        }

        // GET: FoodDetails/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FoodDetail foodDetail = db.FoodDetails.Find(id);
            if (foodDetail == null)
            {
                return HttpNotFound();
            }
            return View(foodDetail);
        }

        // POST: FoodDetails/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FoodDetail foodDetail = db.FoodDetails.Find(id);
            db.FoodDetails.Remove(foodDetail);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
