Feature: Filling in membership form
	In order to renew or start my membership
	As a potential TECCWA member
	I want to be able to submit a membership application


Scenario: All the required sections are present
	Given I am on the home page
	Then the title is "TECCWA Membership Form"
	And I should see "Contact Details"
	And I should see "Dietary/Medical Alerts"
	And I should see "Emergency Contacts"
	And I should see "Vehicle Details"
	And I should see "Payment Details"

Scenario: The user must enter all required details
	Given I am on the home page
	And I press "Send"
	Then I should see the error "Title is required"
	And I should see the error "First Name is required"
	And I should see the error "Last Name is required"
	And I should see the error "Street Number is required"
	And I should see the error "Street Name is required"
	And I should see the error "Postcode is required"
	And I should see the error "Contact Phone Number is required"
	And I should see the error "E-Mail Address is required"
	And I should see the error "D.O.B. is required"
	 
