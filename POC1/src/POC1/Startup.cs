using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using System.IO;

namespace POC1
{
    public class Startup
    {
        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit http://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            //http://asp.net-hacker.rocks/2016/08/08/setup-angular2-typescript-aspnetcore-in-visualstudio.html
            //https://github.com/JuergenGutsch/angular2-aspnetcore-vs/tree/master/src/WebApplication2/wwwroot/app
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory.AddConsole();

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            DefaultFilesOptions options = new DefaultFilesOptions();
            options.DefaultFileNames.Clear();
            options.DefaultFileNames.Add("index.html");

            // UseDefaultFiles is URL rewriting middleware which will map all requests to wwwroot folder
            //http://www.talkingdotnet.com/make-index-html-startup-file-in-aspnet-core/
            app.UseDefaultFiles();

            // if url is an angular route which is not present on the server, we need to handle 404 error
            // this middleware will handle these requests
            app.Use(async (context, next) =>
            {
                await next();

                if (context.Response.StatusCode == 404
                    && !Path.HasExtension(context.Request.Path.Value))
                {
                    context.Request.Path = "/index.html";
                    await next();
                }
            });


            // UseStaticFiles will actually server files from wwwroot folder
            app.UseStaticFiles();

            app.Run(async (context) =>
            {
                await context.Response.WriteAsync("Hello World!");
            });
        }
    }
}
