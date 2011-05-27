// ------------------------------------------------------------------------------
//  <auto-generated>
//      This code was generated by SpecFlow (http://www.specflow.org/).
//      SpecFlow Version:1.6.1.0
//      SpecFlow Generator Version:1.6.0.0
//      Runtime Version:4.0.30319.1
// 
//      Changes to this file may cause incorrect behavior and will be lost if
//      the code is regenerated.
//  </auto-generated>
// ------------------------------------------------------------------------------
#region Designer generated code
namespace Specs.Features
{
    using TechTalk.SpecFlow;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("TechTalk.SpecFlow", "1.6.1.0")]
    [System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [NUnit.Framework.TestFixtureAttribute()]
    [NUnit.Framework.DescriptionAttribute("Filling in membership form")]
    public partial class FillingInMembershipFormFeature
    {
        
        private static TechTalk.SpecFlow.ITestRunner testRunner;
        
#line 1 "FillInMembershipForm.feature"
#line hidden
        
        [NUnit.Framework.TestFixtureSetUpAttribute()]
        public virtual void FeatureSetup()
        {
            testRunner = TechTalk.SpecFlow.TestRunnerManager.GetTestRunner();
            TechTalk.SpecFlow.FeatureInfo featureInfo = new TechTalk.SpecFlow.FeatureInfo(new System.Globalization.CultureInfo("en-US"), "Filling in membership form", "In order to renew or start my membership\r\nAs a potential TECCWA member\r\nI want to" +
                    " be able to submit a membership application", GenerationTargetLanguage.CSharp, ((string[])(null)));
            testRunner.OnFeatureStart(featureInfo);
        }
        
        [NUnit.Framework.TestFixtureTearDownAttribute()]
        public virtual void FeatureTearDown()
        {
            testRunner.OnFeatureEnd();
            testRunner = null;
        }
        
        public virtual void ScenarioSetup(TechTalk.SpecFlow.ScenarioInfo scenarioInfo)
        {
            testRunner.OnScenarioStart(scenarioInfo);
        }
        
        [NUnit.Framework.TearDownAttribute()]
        public virtual void ScenarioTearDown()
        {
            testRunner.OnScenarioEnd();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("Navigating to the Home Page")]
        public virtual void NavigatingToTheHomePage()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("Navigating to the Home Page", ((string[])(null)));
#line 6
this.ScenarioSetup(scenarioInfo);
#line 7
 testRunner.Given("I am on the home page");
#line 8
 testRunner.Then("the title is \"TECCWA Membership Form\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("All the required sections are present")]
        public virtual void AllTheRequiredSectionsArePresent()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("All the required sections are present", ((string[])(null)));
#line 10
this.ScenarioSetup(scenarioInfo);
#line 11
 testRunner.Given("I am on the home page");
#line 12
 testRunner.And("I should see \"Contact Details\"");
#line 13
 testRunner.And("I should see \"Dietary/Medical Alerts\"");
#line 14
 testRunner.And("I should see \"Emergency Contacts\"");
#line 15
 testRunner.And("I should see \"Vehicle Details\"");
#line 16
 testRunner.And("I should see \"Payment Details\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("The user is able to fill in their contact details")]
        public virtual void TheUserIsAbleToFillInTheirContactDetails()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("The user is able to fill in their contact details", ((string[])(null)));
#line 18
this.ScenarioSetup(scenarioInfo);
#line 19
 testRunner.Given("I am on the home page");
#line 20
 testRunner.And("I fill in \"Title\" with \"Mr\"");
#line 21
 testRunner.And("I fill in \"First Name\" with \"Roger\"");
#line 22
 testRunner.And("I fill in \"Surname\" with \"Tomlinson\"");
#line 23
 testRunner.And("I fill in \"Unit Number\" with \"12\"");
#line 24
 testRunner.And("I fill in \"Street Number\" with \"146\"");
#line 25
 testRunner.And("I fill in \"Street Name\" with \"Kippax St\"");
#line 26
 testRunner.And("I fill in \"Suburb\" with \"Brunswick\"");
#line 27
 testRunner.And("I select \"NSW\" from \"State\"");
#line 28
 testRunner.And("I fill in \"Postcode\" with \"7140\"");
#line 29
 testRunner.And("I fill in \"Mb\" with \"0418966563\"");
#line 30
 testRunner.And("I fill in \"E-Mail Address\" with \"moo@homes.com\"");
#line 31
 testRunner.And("I fill in \"Date of Birth\" with \"22/10/1983\"");
#line 32
 testRunner.And("I fill in \"Occupation\" with \"Captain Awesome\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("The user is able to fill in their dietary/medical requirements")]
        public virtual void TheUserIsAbleToFillInTheirDietaryMedicalRequirements()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("The user is able to fill in their dietary/medical requirements", ((string[])(null)));
#line 34
this.ScenarioSetup(scenarioInfo);
#line 35
 testRunner.Given("I am on the home page");
#line 36
 testRunner.Then("I fill in the Dietary Medical Requirements with \"Muslim.  Halal meat only please," +
                    " or fish to be safe.\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("The user can add and remove emergency contacts")]
        public virtual void TheUserCanAddAndRemoveEmergencyContacts()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("The user can add and remove emergency contacts", ((string[])(null)));
#line 38
this.ScenarioSetup(scenarioInfo);
#line 39
 testRunner.Given("I am on the home page");
#line 40
 testRunner.Then("I should see 1 Emergency Contacts");
#line 41
 testRunner.Then("I fill in \"Name\" for Emergency Contact 1 with \"Simon O\'Hughson\"");
#line 42
 testRunner.Then("I add another Emergency Contact");
#line 43
 testRunner.Then("I should see 2 Emergency Contacts");
#line 44
 testRunner.Then("I add another Emergency Contact");
#line 45
 testRunner.Then("I should see 3 Emergency Contacts");
#line 46
 testRunner.Then("I remove Emergency Contact 1");
#line 47
 testRunner.Then("I should see 2 Emergency Contacts");
#line 48
 testRunner.Then("\"Name\" for Emergency Contact 1 contains \"\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("The user can edit details for multiple emergency contacts")]
        public virtual void TheUserCanEditDetailsForMultipleEmergencyContacts()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("The user can edit details for multiple emergency contacts", ((string[])(null)));
#line 50
this.ScenarioSetup(scenarioInfo);
#line 51
 testRunner.Given("I am on the home page");
#line 52
 testRunner.Then("I should see 1 Emergency Contacts");
#line 53
 testRunner.And("I fill in \"Name\" for Emergency Contact 1 with \"Simon O\'Hughson\"");
#line 54
 testRunner.And("I fill in \"Contact Number\" for Emergency Contact 1 with \"0438992223\"");
#line 55
 testRunner.And("I fill in \"Relationship\" for Emergency Contact 1 with \"Brother\"");
#line 56
 testRunner.And("I add another Emergency Contact");
#line 57
 testRunner.Then("I should see 2 Emergency Contacts");
#line 58
 testRunner.And("I fill in \"Name\" for Emergency Contact 2 with \"Roger Bobson\"");
#line 59
 testRunner.And("I fill in \"Contact Number\" for Emergency Contact 2 with \"082345322\"");
#line 60
 testRunner.And("I fill in \"Relationship\" for Emergency Contact 2 with \"Father\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("The user must enter all required contact details")]
        public virtual void TheUserMustEnterAllRequiredContactDetails()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("The user must enter all required contact details", ((string[])(null)));
#line 62
this.ScenarioSetup(scenarioInfo);
#line 63
 testRunner.Given("I am on the home page");
#line 64
 testRunner.And("I press \"Send\"");
#line 65
 testRunner.Then("the title is \"TECCWA Membership Form\"");
#line 66
 testRunner.Then("I should see the error \"Title is required\"");
#line 67
 testRunner.And("I should see the error \"First Name is required\"");
#line 68
 testRunner.And("I should see the error \"Surname is required\"");
#line 69
 testRunner.And("I should see the error \"Street Number is required\"");
#line 70
 testRunner.And("I should see the error \"Street Name is required\"");
#line 71
 testRunner.And("I should see the error \"Postcode is required\"");
#line 72
 testRunner.And("I should see the error \"Contact Phone Number is required\"");
#line 73
 testRunner.And("I should see the error \"E-Mail Address is required\"");
#line 74
 testRunner.And("I should see the error \"D.O.B. is required\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("The user must enter a valid email address")]
        public virtual void TheUserMustEnterAValidEmailAddress()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("The user must enter a valid email address", ((string[])(null)));
#line 76
this.ScenarioSetup(scenarioInfo);
#line 77
 testRunner.Given("I am on the home page");
#line 78
 testRunner.Then("I fill in \"E-Mail Address\" with \"wrongemail\"");
#line 79
 testRunner.And("I press \"Send\"");
#line 80
 testRunner.Then("I should see the error \"E-Mail Address is not valid\"");
#line 81
 testRunner.Then("I fill in \"E-Mail Address\" with \"valid@email.com\"");
#line 82
 testRunner.And("I press \"Send\"");
#line 83
 testRunner.Then("I should not see the error \"E-Mail Address is not valid\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("The user can add and remove vehicle details")]
        public virtual void TheUserCanAddAndRemoveVehicleDetails()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("The user can add and remove vehicle details", ((string[])(null)));
#line 85
this.ScenarioSetup(scenarioInfo);
#line 86
 testRunner.Given("I am on the home page");
#line 87
 testRunner.Then("I should see 1 Vehicles");
#line 88
 testRunner.Then("I fill in \"Model\" for Vehicle 1 with \"Subaru\"");
#line 89
 testRunner.Then("I add another Vehicle");
#line 90
 testRunner.Then("I should see 2 Vehicles");
#line 91
 testRunner.Then("I add another Vehicle");
#line 92
 testRunner.Then("I should see 3 Vehicles");
#line 93
 testRunner.Then("I remove Vehicle 1");
#line 94
 testRunner.Then("I should see 2 Vehicles");
#line 95
 testRunner.Then("\"Model\" for Vehicle 1 contains \"\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("The user can edit details for multiple vehicles")]
        public virtual void TheUserCanEditDetailsForMultipleVehicles()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("The user can edit details for multiple vehicles", ((string[])(null)));
#line 97
this.ScenarioSetup(scenarioInfo);
#line 98
 testRunner.Given("I am on the home page");
#line 99
 testRunner.Then("I should see 1 Vehicles");
#line 100
 testRunner.And("I fill in \"Model\" for Vehicle 1 with \"Supra\"");
#line 101
 testRunner.And("I fill in \"Year\" for Vehicle 1 with \"1993\"");
#line 102
 testRunner.And("I fill in \"Chassis Code\" for Vehicle 1 with \"JZA80\"");
#line 103
 testRunner.And("I fill in \"Colour\" for Vehicle 1 with \"Silver\"");
#line 104
 testRunner.And("I fill in \"Engine\" for Vehicle 1 with \"1UZFE\"");
#line 105
 testRunner.And("I fill in \"Use\" for Vehicle 1 with \"Daily\"");
#line 106
 testRunner.And("I add another Vehicle");
#line 107
 testRunner.Then("I should see 2 Vehicles");
#line 108
 testRunner.And("I fill in \"Model\" for Vehicle 2 with \"Celica XX\"");
#line 109
 testRunner.And("I fill in \"Year\" for Vehicle 2 with \"1981\"");
#line 110
 testRunner.And("I fill in \"Chassis Code\" for Vehicle 2 with \"GA61\"");
#line 111
 testRunner.And("I fill in \"Colour\" for Vehicle 2 with \"White\"");
#line 112
 testRunner.And("I fill in \"Engine\" for Vehicle 2 with \"1UZFE\"");
#line 113
 testRunner.And("I fill in \"Use\" for Vehicle 2 with \"Daily\"");
#line hidden
            testRunner.CollectScenarioErrors();
        }
    }
}
#endregion
