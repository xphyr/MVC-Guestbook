using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GeekGuestbook2.Models;

namespace GeekGuestbook2.Controllers
{
    public class HomeController : Controller
    {
        private GeekGuestbookEntities _entities = new GeekGuestbookEntities();

        //
        // GET: /Home/
        public ActionResult Index()
        {
            var model = _entities.Messages.ToList().OrderByDescending(m => m.MessageId);

            return View(model);
        }

        //
        // GET: /Home/Create
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Home/Create
        [HttpPost]
        public ActionResult Create(Message message)
        {
            if (ModelState.IsValid)
            {
                message.Created = DateTime.Now;

                _entities.Messages.Add(message);
                _entities.SaveChanges();

                return RedirectToAction("");
            }

            return View();
        }
	}
}