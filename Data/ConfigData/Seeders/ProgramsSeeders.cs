using Microsoft.EntityFrameworkCore;
using NGOWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Data.ConfigData.Seeders
{
    public class ProgramsSeeders
    {
        public ProgramsSeeders(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Programs>().HasData(
                new Programs { Id=1,ShortContent= "Let's join hands to fill Tet warmly and completely for orphaned children because of the epidemic",Content= "Together with the Hope Fund, bring a warm and complete Tet to orphans and children in difficult circumstances According to statistics in Vietnam, the pandemic has claimed the lives of more than 19,000 people.Thousands of children suddenly fell into orphans,lost the love,  care and care of their parents and loved ones.There are children whose families are already in trouble.Since being orphaned,both parents are forced to become the breadwinners of their younger siblings.There are also newborn babies who have not enjoyed the warmth of their mothers, and have to struggle with their fathers to make a living in cramped boarding houses.Two children Le Quoc Bao and Le Quoc Dam are just one of thousands of those unlucky cases. The 2022 Tet Gift Giving Project was established by the Hope Foundation from the deep understanding and sympathy for those losses. We are looking forward to sharing some of the burden on the small shoulders of children, bringing a warm and full Tet for their families.",PartnerId=1,Duration= DateTime.Now.AddDays(30) }
                );
        }
    }
}
