using System;
using System.Collections.Generic;

namespace SOFTWAREPROJECT_2024.Models;

public partial class Admin
{
    public int AdminId { get; set; }

    public string Name { get; set; }

    public string Email { get; set; } = null!;

    public string Phone { get; set; } = null!;
    public string? AdminPassword { get; set; }

    public DateOnly HireDate { get; set; }

    public virtual ICollection<Staff> Staff { get; set; } = new List<Staff>();
}
