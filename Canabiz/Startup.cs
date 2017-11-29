using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Canabiz.Startup))]
namespace Canabiz
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
