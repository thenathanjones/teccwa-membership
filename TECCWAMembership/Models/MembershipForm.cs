using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace TECCWAMembership.Models
{
    public class MembershipForm
    {
        [Required(ErrorMessage = "Title is required")]
        public string Title { get; set; }

        [DisplayName("First Name")]
        [Required(ErrorMessage = "First Name is required")]
        public string FirstName { get; set; }

        [DisplayName("Surname")]
        [Required(ErrorMessage = "Surname is required")]
        public string LastName { get; set; }

        [DisplayName("Unit Number")]
        public string UnitNumber { get; set; }

        [DisplayName("Street Number")]
        [Required(ErrorMessage = "Street Number is required")]
        public string StreetNumber { get; set; }

        [DisplayName("Street Name")]
        [Required(ErrorMessage = "Street Name is required")]
        public string StreetName { get; set; }

        [Required(ErrorMessage = "Suburb is required")]
        public string Suburb { get; set; }

        [Required(ErrorMessage = "State is required")]
        public State State { get; set; }

        [Required(ErrorMessage = "Postcode is required")]
        public string Postcode { get; set; }

        [DisplayName("Home")]
        public string HomeNumber { get; set; }

        [DisplayName("Mobile")]
        public string MobileNumber { get; set; }

        [DisplayName("Work")]
        public string WorkNumber { get; set; }

        [DisplayName("Date of Birth")]
        [Required(ErrorMessage = "D.O.B. is required")]
        public string DateOfBirth { get; set; }

        public string Occupation { get; set; }

        [DisplayName("E-Mail Address")]
        [Required(ErrorMessage = "E-Mail Address is required")]
        public string EmailAddress { get; set; }

        public IList<EmergencyContact> EmergencyContacts { get; set; }

        public IList<Vehicle> Vehicles { get; set; }

        public string DietaryMedicalAlerts { get; set; }

        public bool IsPhoneValid { get { return HomeNumber != null || MobileNumber != null || WorkNumber != null; } }

        public static IEnumerable<SelectListItem> StatesAsList()
        {
            return
                Enum.GetValues(typeof (State)).Cast<State>().Select(
                    s => new SelectListItem() {Text = s.ToString(), Value = s.ToString()});
        }
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