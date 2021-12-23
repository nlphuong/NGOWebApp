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
                new Donate {Id=1,AccountId=6,CategoryId=2,PartnerId=2,ProgramId=1,Amount=1000 },
                new Donate {Id=2,AccountId=6,CategoryId=3,PartnerId=3,Amount=2000 },
                new Donate {Id=3,AccountId=6,CategoryId=2,ProgramId=2,PartnerId=2,Amount=20000 },
                new Donate {Id=4,AccountId=6,CategoryId=2,ProgramId=2,PartnerId=1,Amount=5000 },
                new Donate {Id=5,AccountId=6,CategoryId=4,ProgramId=4,PartnerId=4,Amount=7000 }
                );
        }
    }
}
