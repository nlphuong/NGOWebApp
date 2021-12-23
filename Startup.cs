using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using NGOWebApp.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NGOWebApp.Models;


namespace NGOWebApp
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<DatabaseContext>(options => options.UseSqlServer(Configuration.GetConnectionString("ConnectDB")));
            services.AddControllersWithViews();
            services.AddHttpContextAccessor();
            services.AddSession(Options => {
                Options.IdleTimeout = TimeSpan.FromMinutes(120);
                Options.Cookie.HttpOnly = true;
                Options.Cookie.IsEssential = true;
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }
            app.UseStaticFiles();

            app.UseRouting();
            app.UseSession();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapAreaControllerRoute(
               name: "MyAreaAdmin",
               areaName: "Admin",
               pattern: "Admin/{controller=Home}/{action=Index}/{id?}");          

                endpoints.MapAreaControllerRoute(
                name: "MyAreaUser",
                areaName: "User",
                pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}");

            });
        }
    }
}
