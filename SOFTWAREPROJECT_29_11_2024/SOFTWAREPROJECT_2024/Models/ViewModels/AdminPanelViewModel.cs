using System;

namespace SOFTWAREPROJECT_2024.Models.ViewModels;

public class AdminPanelViewModel
{

    public List<Book> Books { get; set; }
    public List<Member> Members { get; set; }
    public List<BorrowingViewModel> BorrowingsViewModel { get; set; }

}
