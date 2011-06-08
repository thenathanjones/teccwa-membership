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
    class VehicleDetailsSteps
    {
        [Then(@"I should see (\d) Vehicles")]
        public void ThenIShouldSeeXVehicleDetails(int numDetails)
        {
            Assert.AreEqual(numDetails, WebBrowser.Current.Divs.Count(d => d.ClassName != null && d.ClassName.Contains("vehicle")));
        }

        [Then(@"I fill in ""(.*)"" for Vehicle (\d) with ""(.*)""")]
        public void ThenIFillInFieldForVehicleXWithValue(string labelName, int detailsNumber, string value)
        {
            var targetField = GetTargetField(labelName, detailsNumber);
            targetField.Value = value;
        }

        [Then(@"I add another Vehicle")]
        public void ThenIAddAnotherVehicle()
        {
            WebBrowser.Current.Links.First(l => l.Id == "add-vehicle").Click();
        }

        [Then(@"I remove Vehicle (\d)")]
        public void ThenIRemoveVehicleX(int vehicleNumber)
        {
            WebBrowser.Current.Links.Where(l => l.ClassName != null && l.ClassName.Contains("remove-vehicle")).ElementAt(vehicleNumber - 1).Click();
        }

        [Then(@"""(.*)"" for Vehicle (\d) contains ""(.*)""")]
        public void ThenFieldForVehicleXContainsValue(string labelName, int vehicleNumber, string value)
        {
            var targetField = GetTargetField(labelName, vehicleNumber);
            if (value == string.Empty)
                Assert.IsNull(targetField.Value);
            else
                Assert.AreEqual(value, targetField.Value);
        }

        private static TextField GetTargetField(string labelName, int vehicleNumber)
        {
            var container = WebBrowser.Current.Divs.Single(d => d.Id == "vehicles");
            var label = container.Labels.Where(l => l.Text == labelName).ElementAt(vehicleNumber - 1);
            var forField = label.For.Contains("[0]") ? label.For.Replace("[0]", "_0_") : label.For;
            return WebBrowser.Current.TextField(t => t.Id == forField);
        }
    }
}
