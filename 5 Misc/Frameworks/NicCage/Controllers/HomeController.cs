using Microsoft.AspNetCore.Mvc;
using System.Text.Encodings.Web;

namespace NicCage.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult AddCrazy()
        {
            return View();
        }

        public IActionResult Bees()
        {
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }
    }
}