using System;
using System.Collections.Generic;

namespace Software_Project_2024_API;

public partial class Staff
{
    public int StaffId { get; set; }

    public string Name { get; set; } = null!;

    public string Position { get; set; } = null!;

    public DateOnly HireDate { get; set; }

    public int? AdminId { get; set; }

    public virtual Admin? Admin { get; set; }
}
