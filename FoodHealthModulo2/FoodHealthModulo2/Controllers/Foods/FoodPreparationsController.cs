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
    public class FoodPreparationsController : Controller
    {
        private FoodHealthModulo2Context db = new FoodHealthModulo2Context();

        // GET: FoodPreparations
        public ActionResult Index()
        {
            var foodPreparations = db.FoodPreparations.Include(f => f.Food);
            return View(foodPreparations.ToList());
        }

        // GET: FoodPreparations/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FoodPreparation foodPreparation = db.FoodPreparations.Find(id);
            if (foodPreparation == null)
            {
                return HttpNotFound();
            }
            return View(foodPreparation);
        }

        // GET: FoodPreparations/Create
        public ActionResult Create()
        {
            ViewBag.FoodID = new SelectList(db.Foods, "FoodID", "Name");
            return View();
        }

        // POST: FoodPreparations/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "FoodPreparationID,FoodID,DateMax,DateMin,Details")] FoodPreparation foodPreparation)
        {
            if (ModelState.IsValid)
            {
                db.FoodPreparations.Add(foodPreparation);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.FoodID = new SelectList(db.Foods, "FoodID", "Name", foodPreparation.FoodID);
            return View(foodPreparation);
        }

        // GET: FoodPreparations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FoodPreparation foodPreparation = db.FoodPreparations.Find(id);
            if (foodPreparation == null)
            {
                return HttpNotFound();
            }
            ViewBag.FoodID = new SelectList(db.Foods, "FoodID", "Name", foodPreparation.FoodID);
            return View(foodPreparation);
        }

        // POST: FoodPreparations/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "FoodPreparationID,FoodID,DateMax,DateMin,Details")] FoodPreparation foodPreparation)
        {
            if (ModelState.IsValid)
            {
                db.Entry(foodPreparation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.FoodID = new SelectList(db.Foods, "FoodID", "Name", foodPreparation.FoodID);
            return View(foodPreparation);
        }

        // GET: FoodPreparations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FoodPreparation foodPreparation = db.FoodPreparations.Find(id);
            if (foodPreparation == null)
            {
                return HttpNotFound();
            }
            return View(foodPreparation);
        }

        // POST: FoodPreparations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FoodPreparation foodPreparation = db.FoodPreparations.Find(id);
            db.FoodPreparations.Remove(foodPreparation);
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
