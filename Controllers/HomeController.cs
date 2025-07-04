using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using PrimerTP_BD_UrquizoBrasburg.Models;

namespace PrimerTP_BD_UrquizoBrasburg.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }
}
