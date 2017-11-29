using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Canabiz.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
    {

        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
            GetRatings().ForEach(r => context.Ratings.Add(r));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category>
            {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Bongs",
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Pipes",
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Vaporizers",
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Smoking Accessories",
                }
            };
            return categories;
        }

        private static List<Product> GetProducts()
        {
            var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "Glass bong",
                    UnitPrice = 799.00,
                    ImagePath = "glassbong.png",
                    Description = "This is a tall glass bong of 30cm height and 2cm width. Sold standard with a detachable bowl" +
                    "and a pipe cleaner set.",
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "Decal Bong",
                    UnitPrice = 900.00,
                    ImagePath = "bong2.png",
                    Description = "This bong has a recapture system on the neck and comes decaled with a dragon.",
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 2,
                    ProductName = "Steamroller pipe",
                    UnitPrice = 499.00,
                    ImagePath = "pipe.png",
                    Description = "This is a small pipe designed for on the go smoking",
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 6,
                    ProductName = "Sherlock pipe",
                    UnitPrice = 1000.00,
                    ImagePath = "pipe2.png",
                    Description = "This tasteful pipe has an all teak wooden bowl, and a gold staff. It pulls as good as it looks",
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 7,
                    ProductName = "Piece Pipe",
                    UnitPrice = 500.00,
                    ImagePath = "pipe3.png",
                    Description = "This is a pipe that fits on your keyring and then disassembled in order to form a pipe",
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 3,
                    ProductName = "Vaporizer 3000",
                    UnitPrice = 1399.00,
                    ImagePath = "vape.png",
                    Description = "The latest in powerful vaporizer design, comes with charger port and 3 custom flavours.",
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 8,
                    ProductName = "Asthma Vape",
                    UnitPrice = 1799.00,
                    ImagePath = "vape2.png",
                    Description = "Vape anywhere you want with this asthma pump styled vape!",
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 9,
                    ProductName = "eGot 3000",
                    UnitPrice = 1200.00,
                    ImagePath = "vape3.png",
                    Description = "eGot are back with an even better vape pen, buy this to vape on the move.",
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "Wheel Grinder",
                    UnitPrice = 399.00,
                    ImagePath = "grinder.png",
                    Description = "This grinder is a model of performance, grinding any substance of choice in just a few short seconds.",
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 10,
                    ProductName = "Black Grinder",
                    UnitPrice = 300.00,
                    ImagePath = "grinder2.png",
                    Description = "Can't go wrong with a simple black grinder!",
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 11,
                    ProductName = "Grinder with Rims",
                    UnitPrice = 300.00,
                    ImagePath = "grinder3.png",
                    Description = "A classic grinder with a twist.",
                    CategoryID = 4
                }
            };
            return products;
        }

        private static List<Ratings> GetRatings()
        {
            var Ratings = new List<Ratings>()
            {
                new Ratings
                {
                    ReviewID = 1,
                    ProductID = 1,
                    ReviewerName = "Barry",
                    ReviewDescription = "The tall glass bong is a pleasure to smoke out of.",
                    Flagged = false,
                    RatingOutOfTen = 10.00,
                    DaysAgo = 5
                },
                new Ratings
                {
                    ReviewID = 2,
                    ProductID = 2,
                    ReviewerName = "Darren",
                    ReviewDescription = "The small pipe is so portable and sweet, really love it.",
                    Flagged = false,
                    RatingOutOfTen = 8.00,
                    DaysAgo = 7
                },
                new Ratings
                {
                    ReviewID = 3,
                    ProductID = 3,
                    ReviewerName = "Mike",
                    ReviewDescription = "The vaporizer is probably the sweetest thing I have bought in a while.",
                    Flagged = false,
                    RatingOutOfTen = 9.50,
                    DaysAgo = 3
                },
                new Ratings
                {
                    ReviewID = 4,
                    ProductID = 4,
                    ReviewerName = "Lucia",
                    ReviewDescription = "The grinder works really well for a range of substances.",
                    Flagged = false,
                    RatingOutOfTen = 7.00,
                    DaysAgo = 6
                }
            };
            return Ratings;
        }
    }
}