using Microsoft.EntityFrameworkCore;
using NGOWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Data.ConfigData.Seeders
{
    public class PartnerSeeders
    {
        public PartnerSeeders(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Partner>().HasData(
                new Partner() {Id=1,OrgName="Partner1",Email="partner1@gmail.com",Phone="0593330772",Address="USA",CategoryId=2,Logo= "images/partner.jpg" },
                new Partner() {Id=2,OrgName="Partner2",Email="partner2@gmail.com",Phone="0946963045",Address="HCM, VIet Nam",CategoryId=2,Logo= "images/partner.jpg" }
                );
        }
    }
}
