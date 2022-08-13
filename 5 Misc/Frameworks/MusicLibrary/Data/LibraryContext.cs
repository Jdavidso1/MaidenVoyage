using MusicLibrary.Models;
using Microsoft.EntityFrameworkCore;

namespace MusicLibrary.Data
{
    public class LibraryContext : DbContext
    {
        public LibraryContext(DbContextOptions<LibraryContext> options) : base(options)
        {
        }

        public DbSet<Album> Albums { get; set; }
        public DbSet<Song> Songs { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Album>().ToTable("Album");
            modelBuilder.Entity<Song>().ToTable("Song");
        }
    }
}