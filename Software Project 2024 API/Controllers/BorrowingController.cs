using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Software_Project_2024_API;

namespace Software_Project_2024_API.Controllers
{
    public class BorrowingController : Controller
    {
        private readonly LibDatabaseContext _context;
        public BorrowingController(LibDatabaseContext context)
        {
            _context = context;
        }
        public IActionResult Get()
        {
            var borrow = _context.Borrowings.ToList();
            return View(borrow);
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var borrow = _context.Borrowings.FirstOrDefault(b => b.BorrowId == id);
            return View(borrow);
        }
        [HttpPost]
        public IActionResult Create([FromForm] Borrowing borrow)
        {
            if (ModelState.IsValid)
            {
                _context.Borrowings.Add(borrow);
                _context.SaveChanges();
            }
            
            return View();
        }

        public IActionResult Update(Borrowing borrow)
        {
            if (ModelState.IsValid)//yunusun attığı kısmı inceleyeceğim.
            {
                _context.Borrowings.Update(borrow);
                _context.SaveChanges();
            }
            
            return View();
        }


        public IActionResult Delete(int id)
        {
            var deleteborrow = _context.Borrowings.FirstOrDefault(d => d.BorrowId == id);
            if(deleteborrow != null)
            {
                _context.Borrowings.Remove(deleteborrow);
                _context.SaveChanges();
            }
            return View();
        }
        //zazanın zımbırtısı
        public IActionResult BookStatus(int id)
        {
            var borrow = _context.Borrowings.FirstOrDefault(b => b.BorrowId == id);
            string statu = borrow.Status;
            return View(statu);
        }
    }
}
