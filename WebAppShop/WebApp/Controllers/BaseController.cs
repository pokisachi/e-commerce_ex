
using Microsoft.AspNetCore.Mvc;

namespace WebApp.Controllers;

public class BaseController:Controller{
    Siteprovider? provider;
    protected Siteprovider Provider => 
        provider ??= new(HttpContext.RequestServices.GetRequiredService<IConfiguration>());

}