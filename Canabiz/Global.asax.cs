using Canabiz.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Canabiz.Logic;
using System.Net;

namespace Canabiz
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // Initialize the product database.
            Database.SetInitializer(new ProductDatabaseInitializer());

            // Create the administrator role and user.
            RoleActions roleActions = new RoleActions();
            roleActions.createAdmin();
        }

    }
}