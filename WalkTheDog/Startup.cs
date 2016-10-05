using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WalkTheDog.Startup))]
namespace WalkTheDog
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
