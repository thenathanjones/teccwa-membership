using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TECCWAMembership.Models
{
    public class Vehicle
    {
        [Required(ErrorMessage = "Make and/or Model is required")]
        [DisplayName("Make-Model")]
        public string MakeModel { get; set; }

        public string Year { get; set; }

        [DisplayName("Chassis Code")]
        public string ChassisCode { get; set; }

        public string Colour { get; set; }

        public string Engine { get; set; }

        public string Use { get; set; }
    }
}