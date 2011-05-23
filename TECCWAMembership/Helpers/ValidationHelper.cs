using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace TECCWAMembership.Helpers
{
    public class ValidationHelper
    {
        public static bool IsValidEmail(string emailAddress)
        {
            return Regex.IsMatch(emailAddress, @"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
        }
    }
}