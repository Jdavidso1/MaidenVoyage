using System;
using System.ComponentModel.DataAnnotations;

namespace NicCage.Models
{
    public class NicCageRole
    {
        public int Id { get; set; }
        public string CharacterName { get; set; }
        public string MovieTitle { get; set; }
        public bool IsHeWeird { get; set; }
        public int Rating { get; set; }
        public string Picture { get; set; }
    }
}