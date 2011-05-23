using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TECCWAMembership.Helpers;
using TECCWAMembership.Models;

namespace TECCWAMembership.Controllers
{
    public class MembershipFormController : Controller
    {
        //
        // GET: /MembershipForm/

        public ActionResult Index()
        {
            ViewData.Model = new MembershipForm();

            return View();
        }

        [HttpPost]
        public ActionResult Send(MembershipForm formToSend)
        {
            if (!formToSend.IsPhoneValid)
            {
                ModelState.AddModelError("ContactNumber", "Contact Phone Number is required");
            }

            if (formToSend.EmailAddress != null && !ValidationHelper.IsValidEmail(formToSend.EmailAddress))
            {
                ModelState.AddModelError("EmailAddress", "E-Mail Address is not valid");
            }

            if (ModelState.IsValid)
            {
                return Redirect("/");
            }

            return View("Index", formToSend);
        }
    }
}
