using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace TECCWAMembership.Models
{
    public class Vehicle
    {
        public string Model { get; set; }

        public string Year { get; set; }

        [DisplayName("Chassis Code")]
        public string ChassisCode { get; set; }

        public string Colour { get; set; }

        public string Engine { get; set; }

        public string Use { get; set; }
    }
}