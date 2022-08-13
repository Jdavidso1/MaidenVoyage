using Microsoft.EntityFrameworkCore;
using NicCage.Models;

namespace NicCage.Data
{
    public class NicCageContext : DbContext
    {
        public NicCageContext (DbContextOptions<NicCageContext> options)
            : base(options)
        {
        }

        public DbSet<NicCageRole> NicCageRole { get; set; }
    }
}