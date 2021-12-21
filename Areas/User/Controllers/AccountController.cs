using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using NGOWebApp.Models;
using NGOWebApp.Data;
using NGOWebApp.Models.ViewModels;
using System.Web.Helpers;
using Microsoft.EntityFrameworkCore;

namespace NGOWebApp.Areas.User.Controllers
{
    [Area("User")]
    public class AccountController : Controller
    {
        private readonly  DatabaseContext _db;
        public AccountController(DatabaseContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
         
                return View();
            
        }

        //Login
        [HttpGet]
        public IActionResult Login()
        {
        
            return View();
        }

        [HttpPost, ActionName("Login")]
        [ValidateAntiForgeryToken]

        public IActionResult Login(string Email, string Password)
        {
            if(ModelState.IsValid)
            {
                var objAccount  = _db.GetAccounts.Where(u => u.Email == Email && u.Status == 1).FirstOrDefault();
                if(objAccount != null)
                {
                    var verified = GetMD5.CheckMD5(Password);
                    if(objAccount.Password.Equals(verified))
                    {
                        //add session
                        HttpContext.Session.Clear();
                        HttpContext.Session.SetString("FullName", objAccount.FullName);
                        HttpContext.Session.SetInt32("Role", objAccount.RoleId);
                        HttpContext.Session.SetInt32("Id", objAccount.Id);

                        if (objAccount.RoleId == 1)
                        {
                            return RedirectToAction("Index", "Home", new { area = "Admin" });
                        } else
                        {
                            return RedirectToAction("Index", "Home", new { area = "User" });
                        }

                    } else
                    {
                        ViewBag.Error = "Password does not match";
                        return View();
                    }

                } else
                {
                    ViewBag.ExistUser = "Email is not reigister";
                    return View();
                }

            }

            return View();
        }
   
        //Log out
        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return RedirectToAction("Login");
           
        }

        //Register
        [HttpGet]
        public IActionResult Register()
        {
            AccountVM accountVM = new AccountVM()
            {
                Account = new Account(),
                ExistsAccount = false

            };
            return View(accountVM);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Register(AccountVM accountVM)
        {
            if(ModelState.IsValid)
            {
                var accountCheck = _db.GetAccounts.Where(u => u.Email == accountVM.Account.Email).FirstOrDefault();
                if(accountCheck == null || (accountCheck != null && accountCheck.Status == 2))
                {
                    accountVM.Account.Password = GetMD5.CheckMD5(accountVM.Account.Password);
                    _db.GetAccounts.Add(accountVM.Account);
                    _db.SaveChanges();
                    return RedirectToAction("Login");
                }
                else
                {
                    accountVM.ExistsAccount = true;
                    return View(accountVM);
                }
            }

            return View(accountVM);
        }

        //Forgot password
        [HttpGet]
        public IActionResult ForgotPassword()
        {
            return View();
        }
        

        //User profile
        public IActionResult UserProfile()
        {
            
            if (HttpContext.Session.GetString("FullName") == null)
            {
                return RedirectToAction("Login");
            }
            else
            {
                var id = HttpContext.Session.GetInt32("Id");
                var account = _db.GetAccounts.Find(id);
                return View(account);
            }
        }
    }
}
