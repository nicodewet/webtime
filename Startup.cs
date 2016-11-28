using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;

namespace NicoDeWet.WebTime
{
    public class Startup
    {
        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddResponseCompression();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            // Setting a default home page gives site visitors a place to start when visiting your site. In order for your Web app 
            // to serve a default page without the user having to fully qualify the URI, call the UseDefaultFiles extension method 
            // from Startup.Configure as follows.
            // Note UseDefaultFiles must be called before UseStaticFiles to serve the default file. UseDefaultFiles is a URL re-writer 
            // that doesn’t actually serve the file. You must enable the static file middleware (UseStaticFiles) to serve the file.
            app.UseDefaultFiles();
            // For the wwwroot folder
            app.UseStaticFiles();

            // Add simple GZipCompression using the fastest compression level
            app.UseResponseCompression();

            loggerFactory.AddConsole();
        }
    }
}
