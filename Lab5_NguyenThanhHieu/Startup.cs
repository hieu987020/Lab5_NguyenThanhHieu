using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Lab5_NguyenThanhHieu.Startup))]
namespace Lab5_NguyenThanhHieu
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
