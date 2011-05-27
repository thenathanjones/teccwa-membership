Feature: Filling in membership form
	In order to renew or start my membership
	As a potential TECCWA member
	I want to be able to submit a membership application

Scenario: Navigating to the Home Page
	Given I am on the home page
	Then the title is "TECCWA Membership Form"

Scenario: All the required sections are present
	Given I am on the home page
	And I should see "Contact Details"
	And I should see "Dietary/Medical Alerts"
	And I should see "Emergency Contacts"
	And I should see "Vehicle Details"
	And I should see "Payment Details"

Scenario: The user is able to fill in their contact details
	Given I am on the home page
	And I fill in "Title" with "Mr"
	And I fill in "First Name" with "Roger"
	And I fill in "Surname" with "Tomlinson"
	And I fill in "Unit Number" with "12"
	And I fill in "Street Number" with "146"
	And I fill in "Street Name" with "Kippax St"
	And I fill in "Suburb" with "Brunswick"
	And I select "NSW" from "State"
	And I fill in "Postcode" with "7140"
	And I fill in "Mb" with "0418966563"
	And I fill in "E-Mail Address" with "moo@homes.com"
	And I fill in "Date of Birth" with "22/10/1983"
	And I fill in "Occupation" with "Captain Awesome"

Scenario: The user is able to fill in their dietary/medical requirements
	Given I am on the home page
	Then I fill in the Dietary Medical Requirements with "Muslim.  Halal meat only please, or fish to be safe."

Scenario: The user can add and remove emergency contacts
	Given I am on the home page
	Then I should see 1 Emergency Contacts
	Then I fill in "Name" for Emergency Contact 1 with "Simon O'Hughson"
	Then I add another Emergency Contact
	Then I should see 2 Emergency Contacts
	Then I add another Emergency Contact
	Then I should see 3 Emergency Contacts
	Then I remove Emergency Contact 1
	Then I should see 2 Emergency Contacts
	Then "Name" for Emergency Contact 1 contains ""

Scenario: The user can edit details for multiple emergency contacts
	Given I am on the home page
	Then I should see 1 Emergency Contacts
	And I fill in "Name" for Emergency Contact 1 with "Simon O'Hughson"
	And I fill in "Contact Number" for Emergency Contact 1 with "0438992223"
	And I fill in "Relationship" for Emergency Contact 1 with "Brother"
	And I add another Emergency Contact
	Then I should see 2 Emergency Contacts
	And I fill in "Name" for Emergency Contact 2 with "Roger Bobson"
	And I fill in "Contact Number" for Emergency Contact 2 with "082345322"
	And I fill in "Relationship" for Emergency Contact 2 with "Father"

Scenario: The user must enter all required contact details
	Given I am on the home page
	And I press "Send"
	Then the title is "TECCWA Membership Form"
	Then I should see the error "Title is required"
	And I should see the error "First Name is required"
	And I should see the error "Surname is required"
	And I should see the error "Street Number is required"
	And I should see the error "Street Name is required"
	And I should see the error "Postcode is required"
	And I should see the error "Contact Phone Number is required"
	And I should see the error "E-Mail Address is required"
	And I should see the error "D.O.B. is required"

Scenario: The user must enter a valid email address
	Given I am on the home page
	Then I fill in "E-Mail Address" with "wrongemail"
	And I press "Send"
	Then I should see the error "E-Mail Address is not valid"
	Then I fill in "E-Mail Address" with "valid@email.com"
	And I press "Send"
	Then I should not see the error "E-Mail Address is not valid"

Scenario: The user can add and remove vehicle details
	Given I am on the home page
	Then I should see 1 Vehicles
	Then I fill in "Model" for Vehicle 1 with "Subaru"
	Then I add another Vehicle
	Then I should see 2 Vehicles
	Then I add another Vehicle
	Then I should see 3 Vehicles
	Then I remove Vehicle 1
	Then I should see 2 Vehicles
	Then "Model" for Vehicle 1 contains ""

Scenario: The user can edit details for multiple vehicles
	Given I am on the home page
	Then I should see 1 Vehicles
	And I fill in "Model" for Vehicle 1 with "Supra"
	And I fill in "Year" for Vehicle 1 with "1993"
	And I fill in "Chassis Code" for Vehicle 1 with "JZA80"
	And I fill in "Colour" for Vehicle 1 with "Silver"
	And I fill in "Engine" for Vehicle 1 with "1UZFE"
	And I fill in "Use" for Vehicle 1 with "Daily"
	And I add another Vehicle
	Then I should see 2 Vehicles
	And I fill in "Model" for Vehicle 2 with "Celica XX"
	And I fill in "Year" for Vehicle 2 with "1981"
	And I fill in "Chassis Code" for Vehicle 2 with "GA61"
	And I fill in "Colour" for Vehicle 2 with "White"
	And I fill in "Engine" for Vehicle 2 with "1UZFE"
	And I fill in "Use" for Vehicle 2 with "Daily"
