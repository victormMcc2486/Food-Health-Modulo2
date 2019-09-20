using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FoodHealthModulo2.Startup))]
namespace FoodHealthModulo2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
