using Microsoft.EntityFrameworkCore;
using NGOWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Data.ConfigData.Seeders
{
    public class DonateCategorySeeders
    {
        public DonateCategorySeeders(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DonateCategory>().HasData(
                new DonateCategory { Id=1,Name= "Care for elderly people" ,Photo= "images/care-elderly.jpg" },
                new DonateCategory { Id=2,Name= "Children Welfare Activity", Photo= "images/ChildrenWelfare.jpg" },
                new DonateCategory { Id=3,Name= "Disabled Person", Photo= "images/DisabledPerson.jpg" }
                );
        }
    }
}
