using Microsoft.EntityFrameworkCore;
using NGOWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Data.ConfigData.Seeders
{
    public class QuerySeeders
    {
        public QuerySeeders(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Query>().HasData(
                new Query { Id=1,Title="Title",Content="What .......?",AccountId=6,CreatedAt=DateTime.Now.AddDays(-3)}
                );
        }
    }
}
