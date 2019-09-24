using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FoodHealthModulo2.Context;
using FoodHealthModulo2.Models.Profiles;

namespace FoodHealthModulo2.Controllers.Profiles
{
    public class DomentTypesController : Controller
    {
        private FoodHealthModulo2Context db = new FoodHealthModulo2Context();

        // GET: DomentTypes
        public ActionResult Index()
        {
            return View(db.DomentTypes.ToList());
        }

        // GET: DomentTypes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DomentType domentType = db.DomentTypes.Find(id);
            if (domentType == null)
            {
                return HttpNotFound();
            }
            return View(domentType);
        }

        // GET: DomentTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DomentTypes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "DocumentTypeID,NameDocument")] DomentType domentType)
        {
            if (ModelState.IsValid)
            {
                db.DomentTypes.Add(domentType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(domentType);
        }

        // GET: DomentTypes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DomentType domentType = db.DomentTypes.Find(id);
            if (domentType == null)
            {
                return HttpNotFound();
            }
            return View(domentType);
        }

        // POST: DomentTypes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "DocumentTypeID,NameDocument")] DomentType domentType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(domentType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(domentType);
        }

        // GET: DomentTypes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DomentType domentType = db.DomentTypes.Find(id);
            if (domentType == null)
            {
                return HttpNotFound();
            }
            return View(domentType);
        }

        // POST: DomentTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DomentType domentType = db.DomentTypes.Find(id);
            db.DomentTypes.Remove(domentType);
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
