using Microsoft.EntityFrameworkCore;
using NGOWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Data.ConfigData.Seeders
{
    public class ReplySeeders
    {
        public ReplySeeders(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Reply>().HasData(
                new Reply {Id=1,QueryId=1,AccountId=1,Content="Answer1",CreatedAt=DateTime.Now.AddDays(-1).AddMinutes(-5) },
                new Reply {Id=2,QueryId=1,AccountId=2,Content="Answer2",CreatedAt=DateTime.Now.AddDays(-1).AddMinutes(-10) }
                );
        }
    }
}
