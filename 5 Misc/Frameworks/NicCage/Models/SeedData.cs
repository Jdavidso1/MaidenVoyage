using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using NicCage.Data;
using System;
using System.Linq;

namespace NicCage.Models
{
    public static class SeedData
    {
        public static void Initialize(IServiceProvider serviceProvider)
        {
            using (var context = new NicCageContext(
                serviceProvider.GetRequiredService<
                    DbContextOptions<NicCageContext>>()))
            {
                // Look for any movies.
                if (context.NicCageRole.Any())
                {
                    return;   // DB has been seeded
                }

                context.NicCageRole.AddRange(
                    new NicCageRole
                    {
                        CharacterName = "Kane",
                        MovieTitle = "Citizen Kane",
                        IsHeWeird = true,
                        Rating = 9,
                        Picture = "sup",
                    },

                    new NicCageRole
                    {
                        CharacterName = "Oskar Schindler",
                        MovieTitle = "Schindlers List",
                        IsHeWeird = true,
                        Rating = 9,
                        Picture = "sup",
                    }
                );
                context.SaveChanges();
            }
        }
    }
}