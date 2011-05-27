using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NUnit.Framework;
using Specs.Helpers;
using TechTalk.SpecFlow;
using WatiN.Core;

namespace Specs.Steps
{
    [Binding]
    public class EmergencyContactSteps
    {
        [Then(@"I should see (\d) Emergency Contacts")]
        public void ThenIShouldSeeEmergencyContacts(int numberOfContacts)
        {
            Assert.AreEqual(numberOfContacts, WebBrowser.Current.Divs.Count(d => d.ClassName == "emergency-contact"));
        }

        [Then(@"I fill in ""(.*)"" for Emergency Contact (\d) with ""(.*)""")]
        public void ThenIFillInFieldForEmergencyContact(string labelName, int contactNumber, string value)
        {
            var targetField = GetTargetField(labelName, contactNumber);
            targetField.Value = value;
        }

        [Then(@"I add another Emegency Contact")]
        public void ThenIAddAnotherEmegencyContact()
        {
            WebBrowser.Current.Links.First(l => l.Id == "add-emergency-contact").Click();
        }

        [Then(@"I remove Emergency Contact (\d)")]
        public void ThenIRemoveEmergencyContact(int contactNumber)
        {
            WebBrowser.Current.Links.Where(l => l.ClassName == "remove-emergency-contact").ElementAt(contactNumber-1).Click();
        }

        [Then(@"""(.*)"" for Emergency Contact (\d) contains ""(.*)""")]
        public void ThenFieldForEmergencyContactContains(string labelName, int contactNumber, string value)
        {
            var targetField = GetTargetField(labelName, contactNumber);
            if (value == string.Empty)
                Assert.IsNull(targetField.Value);
            else
                Assert.AreEqual(value, targetField.Value);
        }

        private static TextField GetTargetField(string labelName, int contactNumber)
        {
            var container = WebBrowser.Current.Divs.Single(d => d.Id == "emergency-contacts");
            var label = container.Labels.Where(l => l.Text == labelName).ElementAt(contactNumber - 1);
            var forField = contactNumber == 1 ? label.For.Replace("[0]", "_0_") : label.For;
            return WebBrowser.Current.TextField(t => t.Id == forField);
        }
    }
}
