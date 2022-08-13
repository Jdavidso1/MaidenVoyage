using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace MusicLibrary.Models
{
    public class Song
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int SongId { get; set; }
        public string SongName { get; set; }
        public int AlbumId { get; set; }
        public string Length { get; set; }

        public ICollection<Album> Albums { get; set; }
    }
}