using Microsoft.EntityFrameworkCore;
using NGOWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Data.ConfigData.Seeders
{
    public class DonateSeeders
    {
        public DonateSeeders(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Donate>().HasData(
                new Donate {Id=1,AccountId=4,CategoryId=2,PartnerId=2,Amount=1000 },
                new Donate {Id=2,AccountId=3,CategoryId=2,PartnerId=1,Amount=2000 }
                );
        }
    }
}
