﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace agriculture.Models
{
    public partial class ChorePerson
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int OrderStatusId { get; set; }
        public int ChoreId { get; set; }
        public int PersonId { get; set; }

        public virtual Chore Chore { get; set; }
        public virtual OrderStatus OrderStatus { get; set; }
        public virtual Person Person { get; set; }
    }
}