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
                new Query { Id=1,Title= "How to register your account?", Content= "How to register your account?",Status=3, AccountId=6,CreatedAt=DateTime.Now.AddDays(-3)},
                new Query { Id=2,Title= "How to Login your account?", Content= "How to Login your account?", Status=3, AccountId=6,CreatedAt=DateTime.Now.AddDays(-4)},
                new Query { Id=3,Title= "How to create new issue in help center?", Content= "How to create new issue in help center??", Status=3, AccountId=6,CreatedAt=DateTime.Now.AddDays(-2)},
                new Query { Id=4,Title= "How to invite your friend by email?", Content= "How to invite your friend by email?", Status=3, AccountId=6,CreatedAt=DateTime.Now.AddDays(-1)}
                );
        }
    }
}
