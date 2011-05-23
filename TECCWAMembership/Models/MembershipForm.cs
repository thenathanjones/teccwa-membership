using System;
using System.ComponentModel.DataAnnotations;

namespace TECCWAMembership.Models
{
    public class MembershipForm
    {
        [Required(ErrorMessage = "Title is required")]
        public string Title { get; set; }

        [Required(ErrorMessage = "First Name is required")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Last Name is required")]
        public string LastName { get; set; }

        public string UnitNumber { get; set; }

        [Required(ErrorMessage = "Street Number is required")]
        public string StreetNumber { get; set; }

        [Required(ErrorMessage = "Street Name is required")]
        public string StreetName { get; set; }

        [Required(ErrorMessage = "Suburb is required")]
        public string Suburb { get; set; }

        [Required(ErrorMessage = "State is required")]
        public State State { get; set; }

        [Required(ErrorMessage = "Postcode is required")]
        public string Postcode { get; set; }

        public string HomeNumber { get; set; }

        public string MobileNumber { get; set; }

        public string WorkNumber { get; set; }

        public bool IsPhoneValid { get { return HomeNumber != null || MobileNumber != null || WorkNumber != null; } } 
    }

    public enum State
    {
        WA,
        ACT,
        VIC,
        NSW,
        QLD,
        NT,
        TAS
    }
}