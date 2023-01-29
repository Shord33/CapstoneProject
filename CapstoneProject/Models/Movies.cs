using MessagePack;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CapstoneProject.Models
{
    public class Movies
    {
        [System.ComponentModel.DataAnnotations.Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int MovieId { get; set; }
        public string? Title { get; set; }
        public int? PosterId { get; set; }
        public string? Genre { get; set; }
        public string? Description { get; set; }
        public int? Rating { get; set; }
    }
}
