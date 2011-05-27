using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TECCWAMembership.Models
{
    public class EmergencyContact
    {
        [Required(ErrorMessage = "Name is required")]
        public string Name { get; set; }

        [DisplayName("Contact Number")]
        [Required(ErrorMessage = "Contact Number is required")]
        public string ContactNumber { get; set; }

        [Required(ErrorMessage = "Relationship is required")]
        public string Relationship { get; set; }
    }
}