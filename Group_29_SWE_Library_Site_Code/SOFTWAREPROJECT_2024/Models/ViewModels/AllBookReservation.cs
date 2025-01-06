using System;

namespace SOFTWAREPROJECT_2024.Models.ViewModels;
   // Enum dışarıda tanımlanmalı

public class AllBookReservation
{
    public List<string> Genre{ get; set; }//burada sadece kitap Genrelerini aldım
    public List<Book> Books{ get; set; }//Burada da bütün kitaplarının bilgilerini aldım.

    
}
