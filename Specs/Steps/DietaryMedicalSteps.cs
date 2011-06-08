using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NUnit.Framework;
using Specs.Helpers;
using TechTalk.SpecFlow;

namespace Specs.Steps
{
    [Binding]
    public class DietaryMedicalSteps
    {
        [Then(@"I fill in the Dietary Medical Requirements with ""(.*)""")]
        public void ThenIFillInTheDietaryMedicalRequirementsWithBlah(string value)
        {
            var targetField = WebBrowser.Current.TextField("DietaryMedicalAlerts");
            targetField.Value = value;
        }
    }
}
