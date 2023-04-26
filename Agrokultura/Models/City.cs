using System;
using System.Collections.Generic;

namespace Agrokultura.Models;

public partial class City
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public string? PostalCode { get; set; }

    public int CountryId { get; set; }

    public virtual Country Country { get; set; } = null!;

    public virtual ICollection<Person> People { get; set; } = new List<Person>();
}
