﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace agriculture.Models
{
    public partial class Chore
    {
        public Chore()
        {
            ChorePerson = new HashSet<ChorePerson>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public double? Duration { get; set; }

        public virtual ICollection<ChorePerson> ChorePerson { get; set; }
    }
}