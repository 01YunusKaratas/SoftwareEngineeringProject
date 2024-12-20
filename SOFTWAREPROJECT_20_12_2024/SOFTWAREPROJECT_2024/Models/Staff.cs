using System;
using System.Collections.Generic;

namespace SOFTWAREPROJECT_2024.Models;

public partial class Staff
{
    public int StaffId { get; set; }

    public string Name { get; set; } = null!;

    public string Position { get; set; } = null!;

    public DateOnly HireDate { get; set; }

    public int? AdminId { get; set; }

    public virtual Admin? Admin { get; set; }
}
