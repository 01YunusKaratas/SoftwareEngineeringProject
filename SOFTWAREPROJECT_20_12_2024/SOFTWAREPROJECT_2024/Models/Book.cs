using System;
using System.Collections.Generic;

namespace SOFTWAREPROJECT_2024.Models;

public partial class Book
{
    public int BookId { get; set; }

    public string? BookName { get; set; }

    public string? Author { get; set; }

    public string? Genre { get; set; }
    public string? detail{get;set; } //sonradan ekledim bunu
    public string? PhotoUrl{ get; set; }//sonradan update edildi.
    public string? BookStatus{ get; set; }//burda da kitap alındımı alınmadımı ona bakcaz.
    
    public virtual ICollection<Borrowing> Borrowings { get; set; } = new List<Borrowing>();
}

