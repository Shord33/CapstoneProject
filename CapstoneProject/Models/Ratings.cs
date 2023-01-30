using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations.Schema;

namespace CapstoneProject.Models
{
    public class Ratings
    {
        [System.ComponentModel.DataAnnotations.Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int RatingId { get; set; }
        public int MovieId { get; set; }
        public Guid UserId { get; set; }
        public int RatingValue { get; set; }
    }
}
