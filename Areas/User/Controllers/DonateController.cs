﻿using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using NGOWebApp.Data;
using Microsoft.EntityFrameworkCore;
using NGOWebApp.Models;
using NGOWebApp.Models.ViewModels;
using Microsoft.AspNetCore.Mvc.Rendering;


namespace NGOWebApp.Areas.User.Controllers
{
    [Area("User")]
    public class DonateController : Controller
    {
        private readonly DatabaseContext context;
        public DonateController(DatabaseContext _context)
        {
            this.context = _context;
        }
        public ActionResult Index()
        {
            ViewBag.DonateList = new SelectList(GetCategoriesList(), "Id", "Name");
            return View();
        }

        public ActionResult Success()
        {
            return View();
        }

        public List<DonateCategory> GetCategoriesList()
        {
            return context.GetDonateCategories.Where(x=> x.Status == 1).ToList();
             
        }

        public ActionResult GetPartnerList(int CategoryId)
        {
            List<Partner> partners = context.GetPartners.Where(x => x.CategoryId == CategoryId && x.Status == 1).ToList();
            ViewBag.PartnerList = new SelectList(partners, "Id", "OrgName");
            return PartialView("DisplayPartner");
        }

        [HttpPost]
        public IActionResult Create(DonateCategoriesVM donateCategoriesVM)
        {
            try
            {
                Donate donate = new Donate();
                donate.AccountId = donateCategoriesVM.GetDonate.AccountId;
                donate.CategoryId = donateCategoriesVM.CategoryId;
                donate.PartnerId = donateCategoriesVM.PartnerId;
                donate.Amount = donateCategoriesVM.GetDonate.Amount;
                donate.ProgramId = null;
                donate.Status = 1;

                context.GetDonates.Add(donate);
                context.SaveChanges();
                return RedirectToAction("Success");
            }
            catch (Exception)
            {
            }
           return RedirectToAction("Index");
        }
    }
}