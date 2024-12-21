using System;
using System.Collections.Generic;

namespace SOFTWAREPROJECT_2024.Models;

public partial class Member
{
    public int MemberId { get; set; }

    public string? Name { get; set; }

    public string? Email { get; set; }

    public string? Phone { get; set; }

    public DateOnly? JoinDate { get; set; }
    public string? MemberPassword { get; set; }

    public virtual ICollection<Borrowing> Borrowings { get; set; } = new List<Borrowing>();
}
