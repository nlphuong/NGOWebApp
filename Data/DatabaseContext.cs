using Microsoft.EntityFrameworkCore;
using NGOWebApp.Data.ConfigData.Seeders;
using NGOWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NGOWebApp.Data
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions options) : base(options)
        {
        }
        public virtual DbSet<Account> GetAccounts { get; set; }
        public virtual DbSet<ContactUs> GetContactUs { get; set; }
        public virtual DbSet<Donate> GetDonates { get; set; }
        public virtual DbSet<DonateCategory> GetDonateCategories { get; set; }
        public virtual DbSet<Fund> GetFunds { get; set; }
        public virtual DbSet<Interested> GetInteresteds { get; set; }
        public virtual DbSet<Partner> GetPartners { get; set; }
        public virtual DbSet<Photos> GetPhotos { get; set; }
        public virtual DbSet<Programs> GetPrograms { get; set; }
        public virtual DbSet<Query> GetQueries { get; set; }
        public virtual DbSet<Reply> GetReplies { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            #region DefaultValues

            //account
           
            modelBuilder.Entity<Account>().Property(a => a.RoleId).HasDefaultValue(2);
            modelBuilder.Entity<Account>().Property(a => a.Avatar).HasDefaultValue("images/avatar.jpg");
            modelBuilder.Entity<Account>().Property(a => a.CreatedAt).HasDefaultValue(DateTime.Now);

            //contacUs
            modelBuilder.Entity<ContactUs>().Property(a => a.CreatedAt).HasDefaultValue(DateTime.Now);

            //Donate
            modelBuilder.Entity<Donate>().Property(a => a.CreatedAt).HasDefaultValue(DateTime.Now);
            modelBuilder.Entity<Donate>().Property(a => a.Status).HasDefaultValue(1);

            //Fund
            modelBuilder.Entity<Fund>().Property(a => a.CreatedAt).HasDefaultValue(DateTime.Now);

            //Interested
            modelBuilder.Entity<Interested>().Property(a => a.CreatedAt).HasDefaultValue(DateTime.Now);

            //Partner
            modelBuilder.Entity<Partner>().Property(a => a.CreatedAt).HasDefaultValue(DateTime.Now);
            modelBuilder.Entity<Partner>().Property(a => a.UpdatedAt).HasDefaultValue(DateTime.Now);

            //Programs
            modelBuilder.Entity<Programs>().Property(a => a.CreatedAt).HasDefaultValue(DateTime.Now);
            modelBuilder.Entity<Programs>().Property(a => a.UpdatedAt).HasDefaultValue(DateTime.Now);
            modelBuilder.Entity<Programs>().Property(a => a.DeleteAt).HasDefaultValue(DateTime.Now);
            modelBuilder.Entity<Programs>().Property(a => a.Status).HasDefaultValue(1);
            modelBuilder.Entity<Programs>().Property(a => a.ExpectedAmount).HasDefaultValue((double)0);

            //Query
            modelBuilder.Entity<Query>().Property(a => a.CreatedAt).HasDefaultValue(DateTime.Now);
            modelBuilder.Entity<Query>().Property(a => a.UpdatedAt).HasDefaultValue(DateTime.Now);

            //Reply
            modelBuilder.Entity<Reply>().Property(a => a.CreatedAt).HasDefaultValue(DateTime.Now);
            modelBuilder.Entity<Reply>().Property(a => a.UpdatedAt).HasDefaultValue(DateTime.Now);

            #endregion

            #region RelationShip
            //one to one

            //(Accoun-roles)
            modelBuilder.Entity<Account>().HasOne(a => a.GetRole);
            //Fund - Donate
            modelBuilder.Entity<Fund>().HasOne(f => f.GetDonate).WithOne(d => d.GetFund).HasForeignKey<Fund>(f => f.DonateId);

            //one to many

            //(account- donate)
            modelBuilder.Entity<Account>().HasMany(a => a.GetDonates).WithOne(d => d.GetAccount);
            //(account-interested)
            modelBuilder.Entity<Account>().HasMany(a => a.GetInteresteds).WithOne(i => i.GetAccount);
            //(Account-Query)
            modelBuilder.Entity<Account>().HasMany(a => a.GetQueries).WithOne(q => q.GetAccount);
            //(Account-Reply)
            modelBuilder.Entity<Account>().HasMany(a => a.GetReplies).WithOne(r => r.GetAccount);
            //(DonateCategory-Partner)
            modelBuilder.Entity<DonateCategory>().HasMany(d => d.GetPartners).WithOne(p => p.GetDonateCategory);
            //(DonateCategory-Donate)
            modelBuilder.Entity<DonateCategory>().HasMany(d => d.GetPartners).WithOne(p => p.GetDonateCategory);
            //(Partner-Donate)
            modelBuilder.Entity<Partner>().HasMany(p => p.GetDonates).WithOne(d => d.GetPartner);
            //(Partner-Program)
            modelBuilder.Entity<Partner>().HasMany(p => p.GetPrograms).WithOne(d => d.GetPartner);
            //(Query-Reply)
            modelBuilder.Entity<Query>().HasMany(q => q.GetReplies).WithOne(r => r.GetQuery);

            //(Program-Interested)
            modelBuilder.Entity<Programs>().HasMany(p => p.GetInteresteds).WithOne(i => i.GetPrograms);
            //(Program-Photos)
            modelBuilder.Entity<Programs>().HasMany(p => p.GetPhotos).WithOne(p => p.GetPrograms);
            #endregion

            //Aply seedders
            AppSeeders.CallSeeder(modelBuilder);

        }
    }
}
