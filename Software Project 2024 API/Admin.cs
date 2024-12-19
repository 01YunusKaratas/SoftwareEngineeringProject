using System;
using System.Collections.Generic;

namespace Software_Project_2024_API;

public partial class Admin
{
    public int AdminId { get; set; }

    public string Name { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Phone { get; set; } = null!;

    public DateOnly HireDate { get; set; }

    public virtual ICollection<Staff> Staff { get; set; } = new List<Staff>();
}
