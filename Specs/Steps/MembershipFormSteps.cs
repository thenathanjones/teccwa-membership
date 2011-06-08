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

        [Then(@"I should be on the home page")]
        public void ThenIShouldBeOnTheHomePage()
        {
            var rootUrl = new Uri(ConfigurationManager.AppSettings["RootUrl"]);
            var absoluteUrl = new Uri(rootUrl, "/");
            Assert.AreEqual(absoluteUrl, WebBrowser.Current.Url);
        }

        [Then(@"I should see ""(.*)""")]
        [Given(@"I should see ""(.*)""")]
        public void ThenIShouldSee(string toSee)
        {
            Assert.True(WebBrowser.Current.ContainsText(toSee));
        }

        [Then(@"I should not see ""(.*)""")]
        [Given(@"I should not see ""(.*)""")]
        public void ThenIShouldNotSee(string toSee)
        {
            Assert.False(WebBrowser.Current.ContainsText(toSee));
        }

        [Then(@"the title is ""(.*)""")]
        public void ThenTheTitleIs(string title)
        {
            Assert.AreEqual(title, WebBrowser.Current.Title);
        }

        [Then(@"I fill in ""(.*)"" with ""(.*)""")]
        [Given(@"I fill in ""(.*)"" with ""(.*)""")]
        public void GivenIFillInTitleWith(string labelName, string value)
        {
            var label = WebBrowser.Current.Labels.Single(l => l.Text == labelName);
            var targetField = WebBrowser.Current.TextField(t => t.Name == label.For);
            targetField.Value = value;
        }

        [Given(@"I press ""(.*)""")]
        [Then(@"I press ""(.*)""")]
        public void GivenIPress(string buttonText)
        {
            WebBrowser.Current.Button(b => b.Text == buttonText).Click();
        }

        [Then(@"I should see the error ""(.*)""")]
        public void ThenIShouldSeeTheError(string errorMessage)
        {
            Assert.True(WebBrowser.Current.Spans.Any(e => e.ClassName != null && e.ClassName.Contains("field-validation-error") && e.Text == errorMessage));
        }

        [Then(@"I should not see the error ""(.*)""")]
        public void ThenIShouldNotSeeTheError(string errorMessage)
        {
            Assert.False(WebBrowser.Current.Spans.Any(e => e.ClassName != null && e.ClassName.Contains("field-validation-error") && e.Text == errorMessage));
        }

        [Given(@"I select ""(.*)"" from ""(.*)""")]
        public void GivenISelectFrom(string value, string labelName)
        {
            var label = WebBrowser.Current.Labels.Single(l => l.Text == labelName);
            var targetField = WebBrowser.Current.SelectList(label.For);
            targetField.SelectByValue(value);
        }

    }
}
