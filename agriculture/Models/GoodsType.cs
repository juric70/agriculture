﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace agriculture.Models
{
    public partial class GoodsType
    {
        public GoodsType()
        {
            Plant = new HashSet<Plant>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Plant> Plant { get; set; }
    }
}