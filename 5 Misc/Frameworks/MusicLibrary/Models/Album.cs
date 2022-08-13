using System;
using System.Collections.Generic;

namespace MusicLibrary.Models
{
    public class Album
    {
        public int Id { get; set; }
        public string AlbumName { get; set; }
        public string Artist { get; set; }
        public DateTime ReleaseDate { get; set; }

        public ICollection<Song> Songs { get; set; }
    }
}