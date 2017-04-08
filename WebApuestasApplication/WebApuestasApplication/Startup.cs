using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebApuestasApplication.Startup))]
namespace WebApuestasApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
