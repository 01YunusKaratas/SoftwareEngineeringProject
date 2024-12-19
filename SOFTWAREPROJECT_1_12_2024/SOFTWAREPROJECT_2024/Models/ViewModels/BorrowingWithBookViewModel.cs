using System;

namespace SOFTWAREPROJECT_2024.Models.ViewModels;

public class BorrowingWithBookViewModel
{   
    //bunu yaparak ekranda göstermek istedikelrimizi belirliyoruz.
    public int BorrowId { get; set; }
    public string BookName { get; set; }
    public string Author { get; set; }
    public string Genre { get; set; }
    public string Status { get; set; }

}
