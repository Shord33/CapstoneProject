using CapstoneProject.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace CapstoneProject.Data
{
    public class WebsiteContext : IdentityDbContext<IdentityUser>
    {
        public WebsiteContext(DbContextOptions options) : base(options)
        {

        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
        public DbSet<Movies> Movies { get; set; }
        public DbSet<Ratings> Ratings { get; set; }
    }
}
