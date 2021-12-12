using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NGOWebApp.Data;
using NGOWebApp.Models;

namespace NGOWebApp.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class PartnerController : Controller
    {
        private readonly DatabaseContext _db;

        public PartnerController(DatabaseContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            IEnumerable<Partner> objList = _db.GetPartners;
            return View();
        }
    }
}
