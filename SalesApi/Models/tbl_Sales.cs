//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SalesApi.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Sales
    {
        public int SID { get; set; }
        public Nullable<int> EmpID { get; set; }
        public Nullable<System.DateTime> SalesDate { get; set; }
        public Nullable<double> SalesAmount { get; set; }
        public string Sales_Desc { get; set; }
    
        public virtual tbl_employee tbl_employee { get; set; }
    }
}
