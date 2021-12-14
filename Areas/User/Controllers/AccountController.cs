using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NGOWebApp.Services.Interfaces;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using NGOWebApp.Services.Implements;

namespace NGOWebApp.Areas.User.Controllers
{
    [Area("User")]
    public class AccountController : Controller
    {
        private readonly IAccountServices accountServices;
        public AccountController(IAccountServices accountServices)
        {
            this.accountServices = accountServices;
        }

        public IActionResult Index()
        {
            ViewBag.session = HttpContext.Session.GetString("accmail");
            if (HttpContext.Session.GetString("accmail") == null)
            {
                return RedirectToAction("Login");
            }
            else
            {
                return View();
            }
        }

        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ActionName("Login")]
        public IActionResult CheckLogin(string accMail, string pass)
        {
            try
            {
                Models.Account account = accountServices.checkLogin(accMail, pass);
                if (account != null)
                {
                    HttpContext.Session.Clear();
                    HttpContext.Session.SetString("account", JsonConvert.SerializeObject(account));
                    if (account.RoleId == 2)
                    {
                        return RedirectToAction("Index","Home", new { area = "Admin" });
                    }
                    else
                    {
                        return RedirectToAction("Index","Home", new { area = "User" });
                    }
                }
                else
                {
                    ViewBag.Msg = "Invalid account...";
                }
            }
            catch (Exception)
            {
                //ViewBag.Msg = e.Message;
                throw;
            }
            return View();
        }

        public IActionResult Logout()
        {
          
                HttpContext.Session.Clear();
                return RedirectToAction("Login");
           
        }

        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Register(Models.Account newAccount)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    accountServices.createAccount(newAccount);
                    return RedirectToAction("Index", "Home", new { area = "User" });
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, ex.Message);
            }
            return View();
        }

    }
}
