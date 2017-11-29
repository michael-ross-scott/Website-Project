using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Canabiz.Models;

namespace Canabiz.Logic
{
    public class AddRatings
    {
        public bool AddRating(int ProductID, string ReviewerName, string ReviewDescription, int ratingOutOf10)
        {
            var myRating = new Ratings();
            myRating.ProductID = ProductID;
            myRating.RatingOutOfTen = ratingOutOf10;
            myRating.Flagged = false;
            myRating.ReviewDescription = ReviewDescription;
            myRating.ReviewerName = ReviewerName;
            myRating.DaysAgo = 0;

            using (ProductContext _db = new ProductContext())
            {
                _db.Ratings.Add(myRating);
                _db.SaveChanges();
            }
            return true;
        }
    }
}