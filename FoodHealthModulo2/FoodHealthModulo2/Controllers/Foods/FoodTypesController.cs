﻿using System;
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
    public class FoodTypesController : Controller
    {
        private FoodHealthModulo2Context db = new FoodHealthModulo2Context();

        // GET: FoodTypes
        public ActionResult Index()
        {
            return View(db.FoodTypes.ToList());
        }

        // GET: FoodTypes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FoodType foodType = db.FoodTypes.Find(id);
            if (foodType == null)
            {
                return HttpNotFound();
            }
            return View(foodType);
        }

        // GET: FoodTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: FoodTypes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "FoodTypeID,Name")] FoodType foodType)
        {
            if (ModelState.IsValid)
            {
                db.FoodTypes.Add(foodType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(foodType);
        }

        // GET: FoodTypes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FoodType foodType = db.FoodTypes.Find(id);
            if (foodType == null)
            {
                return HttpNotFound();
            }
            return View(foodType);
        }

        // POST: FoodTypes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "FoodTypeID,Name")] FoodType foodType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(foodType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(foodType);
        }

        // GET: FoodTypes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FoodType foodType = db.FoodTypes.Find(id);
            if (foodType == null)
            {
                return HttpNotFound();
            }
            return View(foodType);
        }

        // POST: FoodTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FoodType foodType = db.FoodTypes.Find(id);
            db.FoodTypes.Remove(foodType);
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
