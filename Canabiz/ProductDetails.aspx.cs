using Canabiz.Logic;
using Canabiz.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Canabiz
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        int productID;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetRating(productID);
        }

        public IQueryable<Product> GetProduct([QueryString("productID")] int?productId)
        {
            ViewState["productID"] = productId.GetValueOrDefault();

            var _db = new Canabiz.Models.ProductContext();
            IQueryable<Product> query = _db.Products;
            if (productId.HasValue && productId > 0)
            {
                query = query.Where(p => p.ProductID == productId);
            }
            else
            {
                query = null;
            }
            return query;
        }

        public IQueryable<Ratings> GetRating([QueryString("productID")] int? productId)
        {
            var _db = new Canabiz.Models.ProductContext();
            IQueryable<Ratings> query = _db.Ratings;
            if (productId.HasValue && productId > 0)
            {
                query = query.Where(r => r.ProductID == productId);
            }
            else
            {
                query = null;
            }
            return query;
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            int statusCode = 0;

            productID = Convert.ToInt32(ViewState["productID"]);

            string name = tbxName.Text;
            string reviewDescription = LeaveReview.Value;

            int reviewOutOf10 = 1;

            try
            {
                reviewOutOf10 = Int32.Parse(ratingOut10.Value);
            }
            catch (FormatException s)
            {
                addStatus.Text = "Please enter a rating";
                statusCode = 1;
            }

            if (statusCode == 0)
            {
                AddRatings review = new AddRatings();
                bool success = review.AddRating(productID, name, reviewDescription, reviewOutOf10);
                if (success)
                {
                    Response.Redirect(Request.RawUrl);
                    addStatus.Text = "";
                }
            }

        }
    }
}