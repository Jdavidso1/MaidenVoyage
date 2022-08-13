using MusicLibrary.Models;
using System;
using System.Linq;

namespace MusicLibrary.Data
{
    public static class DbInitializer
    {
        public static void Initialize(LibraryContext context)
        {
            context.Database.EnsureCreated();

            // Look for any students.
            if (context.Albums.Any())
            {
                return;   // DB has been seeded
            }

            var albums = new Album[]
            {
            new Album{AlbumName="Surfer Rosa", Artist="Pixies", ReleaseDate=DateTime.Parse("1988-01-01")},
            new Album{AlbumName="Dopesmoker", Artist="Sleep", ReleaseDate=DateTime.Parse("2003-01-01")},
            };
            foreach (Album a in albums)
            {
                context.Albums.Add(a);
            }
            context.SaveChanges();

            var songs = new Song[]
            {
            new Song{AlbumId=1, SongName="Bone Machine", Length="3:05"},
            new Song{AlbumId=1, SongName="Break My Body", Length="2:08"},
            new Song{AlbumId=2, SongName="Dopesmoker",Length="63:31"},
            };
            foreach (Song s in songs)
            {
                context.Songs.Add(s);
            }
            context.SaveChanges();
        }
    }
}