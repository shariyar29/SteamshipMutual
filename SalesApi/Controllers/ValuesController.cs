using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using SalesApi.Models;

namespace SalesApi.Controllers
{
    public class ValuesController : ApiController
    {
       
        DBSalesEntities db = new DBSalesEntities();   
        // GET api/values
        [Route("api/sales/")]
        public IHttpActionResult Get()
        {
            var result = db.sp_sales().ToList();
            return Ok(result);
        }
        [Route("api/allsales/")]
        [HttpGet]
        public IHttpActionResult allsales()
        {
            var result = db.sp_allsales().ToList();
            return Ok(result);
        }

        [Route("api/manager/")]
        [HttpGet]
        public IHttpActionResult Manager()
        {
            var result = db.sp_manager().ToList();            
            return Ok(result);
        }
        [Route("api/empname/")]
        [HttpGet]
        public IHttpActionResult empname()
        {
            var result = db.sp_salesemp().ToList();
            return Ok(result);
        }
        [Route("api/newemp")]
        [HttpPost]
        public HttpResponseMessage NewEmp(tbl_employee employee)
        {
            HttpResponseMessage result;
            if (ModelState.IsValid)
            { 
                    db.tbl_employee.Add(employee);
                    if(employee.Edesignation!=null ||employee.EFirstName!=null||employee.EManager!=null)
                    db.SaveChanges();           
                result = Request.CreateResponse(HttpStatusCode.Created, employee);
            }
            else
            {
                result = Request.CreateResponse(HttpStatusCode.BadRequest, "Server failed to save data");
            }
            return result;
        }
        [Route("api/newsales")]
        [HttpPost]
        public HttpResponseMessage NewSales(tbl_Sales sale)
        {
            HttpResponseMessage result;
            if (ModelState.IsValid)
            {
                db.tbl_Sales.Add(sale);
                if (sale.EmpID != null || sale.SalesDate!= null || sale.SalesAmount!= null)
                    db.SaveChanges();
                result = Request.CreateResponse(HttpStatusCode.Created, sale);
            }
            else
            {
                result = Request.CreateResponse(HttpStatusCode.BadRequest, "Server failed to save data");
            }
            return result;
        }
    }
}
