using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using NUnit.Framework;
using Specs.Helpers;
using TechTalk.SpecFlow;
using WatiN.Core;

namespace Specs
{
    [Binding]
    public class MembershipFormSteps
    {
        [Given(@"I am on the home page")]
        public void GivenIAmOnTheHomePage()
        {
            var rootUrl = new Uri(ConfigurationManager.AppSettings["RootUrl"]);
            var absoluteUrl = new Uri(rootUrl, "/");
            WebBrowser.Current.GoTo(absoluteUrl);
        }

        [Then(@"I should see ""(.*)""")]
        public void ThenIShouldSee(string toSee)
        {
            Assert.True(WebBrowser.Current.ContainsText(toSee));
        }

        [Then(@"the title is ""(.*)""")]
        public void ThenTheTitleIs(string title)
        {
            Assert.AreEqual(title, WebBrowser.Current.Title);
        }

        [Given(@"I fill in ""(.*)"" with ""(.*)""")]
        public void GivenIFillInTitleWith(string labelName, string value)
        {
            var label = WebBrowser.Current.Labels.Single(l => l.Text == labelName);
            var targetField = WebBrowser.Current.TextField(label.For);
            targetField.TypeText(value);
        }

        [Given(@"I press ""(.*)""")]
        public void GivenIPress(string buttonText)
        {
            WebBrowser.Current.Button(b => b.Text == buttonText).Click();
        }

        [Then(@"I should see the error ""(.*)""")]
        public void ThenIShouldSeeTheError(string errorMessage)
        {
            Assert.True(WebBrowser.Current.Elements.Any(e => e.ClassName == "field-validation-error" && e.Text == errorMessage));
        }


    }
}
