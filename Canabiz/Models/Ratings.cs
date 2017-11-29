using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Canabiz.Models
{
    public class Ratings
    {
        [ScaffoldColumn(false)]
        [Key]
        public int ReviewID { get; set; }
        public int ProductID { get; set; }
        [Required(ErrorMessage = "Review name required."), StringLength(100), Display(Name = "Reviewer name")]
        public string ReviewerName { get; set; }
        [Required(ErrorMessage = "Review required."), StringLength(10000), Display(Name = "Product review"),
       DataType(DataType.MultilineText)]
        public string ReviewDescription { get; set; }
        public Boolean Flagged { get; set; }
        [Required, Display(Name = "Rating out of 10")]
        public double RatingOutOfTen { get; set; }
        public int DaysAgo { get; set; }
    }
}