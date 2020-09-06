using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesApi.Models
{
    public class SalesClass
    {
        public int EmpID { get; set; }
        public DateTime SDate { get; set; }
        public float SAmount { get; set; }
        public string SDesc { get; set; }
    }
}