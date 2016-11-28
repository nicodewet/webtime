using Microsoft.AspNetCore.Mvc;

namespace NicoDeWet.WebTime
{
    public class HomeController : Controller
    {
      public IActionResult Index()
        {
            return View();
        }

    }
}