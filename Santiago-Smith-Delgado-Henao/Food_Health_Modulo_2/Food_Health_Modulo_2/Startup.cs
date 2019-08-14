using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Food_Health_Modulo_2.Startup))]
namespace Food_Health_Modulo_2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
