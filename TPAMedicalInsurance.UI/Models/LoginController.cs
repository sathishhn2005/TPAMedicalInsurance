using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TPAMedicalInsurance.UI.Models
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult UserLogin()
        {
            return View();
        }
    }
}