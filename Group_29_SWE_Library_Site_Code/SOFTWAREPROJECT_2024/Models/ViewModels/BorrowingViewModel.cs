namespace SOFTWAREPROJECT_2024.Models.ViewModels
{
    public class BorrowingViewModel
    {
        public int BorrowId { get; set; } // Ödünç alma işlemi ID'si
        public int MemberId { get; set; } // Üye ID'si
        public required string Name { get; set; } // Üye adı
        public int BookId { get; set; } // Kitap ID'si

        public required string BookName { get; set; } // Kitap adı
        public DateOnly BorrowDate { get; set; }
        public string Status { get; set; } = null!;

        public DateOnly? ReturnDate { get; set; }
        public string? Email { get; set; }
        public string? Phone { get; set; }
        public DateOnly? JoinDate { get; set; }
        public string? MemberPassword { get; set; }

        public string? Genre { get; set; }
        public string? Author { get; set; }
    }
}
