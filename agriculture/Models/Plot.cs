﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace agriculture.Models
{
    public partial class Plot
    {
        public Plot()
        {
            ContractPlot = new HashSet<ContractPlot>();
            IncomeAndExpenses = new HashSet<IncomeAndExpenses>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Coordinates { get; set; }
        public string Longitudes { get; set; }
        public string Corners { get; set; }
        public int? GroundId { get; set; }
        public int? TerrainId { get; set; }
        public int? OwnerId { get; set; }

        public virtual Ground Ground { get; set; }
        public virtual Person Owner { get; set; }
        public virtual Terrain Terrain { get; set; }
        public virtual ICollection<ContractPlot> ContractPlot { get; set; }
        public virtual ICollection<IncomeAndExpenses> IncomeAndExpenses { get; set; }
    }
}