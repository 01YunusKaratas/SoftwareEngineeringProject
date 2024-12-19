using System;

namespace SOFTWAREPROJECT_2024.Models.ViewModels;

public class ProfileViewModels
{
    //aslında bu sınıfı yapma nedenim viewe aktaracaklarımdan dolayı
    public Member Member{get;set;} //burada direk memberdan oluşturdum üyeyi
    public List<BorrowingWithBookViewModel> Borrowing{get;set;}  //burada aldığı kitapları listeledim

}
