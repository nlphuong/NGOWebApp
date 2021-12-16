using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            if(HttpContext.Session.GetString("FullName") == null || HttpContext.Session.GetInt32("Role") != 1)
            {
                return RedirectToAction("Index", "Home", new { area = "User" });
            }
            return View();
        }
    }
}
