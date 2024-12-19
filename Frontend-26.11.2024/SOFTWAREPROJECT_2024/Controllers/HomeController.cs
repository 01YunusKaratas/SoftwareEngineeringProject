using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using SOFTWAREPROJECT_2024.Models;

namespace SOFTWAREPROJECT_2024.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        //Burayı düzenlicez çünkü database bilgilerini burada kullanıcaz
        private readonly AppDbContext _context ;//database için  yazdık.

        public HomeController(AppDbContext context)
        {
            _context = context; //Constructora attribute atayıp bilgileri kullanıcaz
        }
        // Bu altta bulunanlar sayfaların Iaction Resultları
        //Giriş sayfası
        public IActionResult Index()
        {   
            return View();
        }

        //About Page
        public IActionResult About(){

            return View();
        }
        //SignIn Page
      
        //Hatamız aynı sayfada aynı kodu çekmek 
        public IActionResult SignIn(){

            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken] //bu bir güüvenli tokeni oluşturuyor.
        public IActionResult GirişYap(Member model){

             var info = _context.Members.FirstOrDefault(k=>k.Name == model.Name && k.MemberPassword == model.MemberPassword); //burada database baktık
            
            if(info != null){
                ViewBag.Success = "Giriş Başarılı";
                HttpContext.Session.SetString("IsActive", model.MemberId.ToString());//giriş yaparken info register
                Console.WriteLine($"{model.Name} {model.Email} {model.MemberPassword}");//deneme amaçlı
                return RedirectToAction("Index");
            }else{
                ViewBag.message = "Kullanıcı adı veya şifre hatalı tekrar deneyiniz";
                ModelState.AddModelError("", "Invalid login attempt.");//hata yeri
                return View("SignIn");
            }
            

        }

        //Kayıt sayfası için
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Registered(Member kadir){

            var search = _context.Members.FirstOrDefault(k => k.Name ==kadir.Name || k.Email ==kadir.Email);

            if(search != null){


                ViewBag.message = "Bu e-posta veya username zaten kullanılıyor.";
                return View("SignUp",kadir);
            }   

             _context.Members.Add(kadir);
             _context.SaveChanges();
             Console.WriteLine("Kayıt başarıyla Oluşturuldu.");
            return RedirectToAction("SignIn");
        }

        public IActionResult SignUp(){
            return View();
        }
        public IActionResult Profile(){
            return View();
        }

        public IActionResult Reservation(){
            
            return View();
        }
        public IActionResult AdminPanel(){
            
            return View();
        }
        //Logout işlemleri için Post sart oldu
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult LogOut(){
            //Silme cacheden

            HttpContext.Session.Clear();
            return RedirectToAction("Index", "Home");
        }


        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
