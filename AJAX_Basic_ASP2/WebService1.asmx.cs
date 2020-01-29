using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace AJAX_Basic_ASP2
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        

        [WebMethod]
        public Customer FindCustomer(string text)
        {
            return _customers.Where(x => x.FirstName == text || x.LastName == text).FirstOrDefault();
        }
        private List<Customer> _customers = new List<Customer>();
        public WebService1()
        {
            _customers.Add(new Customer() { FirstName = "Jhon", LastName = "Doe", Age = 27 });
            _customers.Add(new Customer() { FirstName = "Tom", LastName = "Ronald", Age = 28 });
            _customers.Add(new Customer() { FirstName = "Jane", LastName = "Roe", Age = 32 });
        }
    }

    public class Customer
    {
        public string FirstName { get; internal set; }
        public string LastName { get; internal set; }
        public int Age { get; internal set; }
    }
}
