using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NGOWebApp.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Areas.Admin.Controllers
{
    [Area("Admin")]

    public class DonateController : Controller
    {
        // GET: DonateController
        private readonly DatabaseContext context;
        public DonateController(DatabaseContext context)
        {
            this.context = context;
        }
        public async Task<ActionResult> Index()
        {
            var model =await context.GetDonates.Include(d=>d.GetAccount).Include(d=>d.GetPartner).Include(d=>d.GetDonateCategory).OrderByDescending(d=>d.CreatedAt).ToListAsync();
            return View(model);
        }

        // GET: DonateController/Details/5
        public ActionResult Details(int id)
        {
            return RedirectToAction("Index", "Home","");
            return View();
        }

        // GET: DonateController/Create
       
    }
}
