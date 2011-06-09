<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.MembershipForm>" %>
<%@ Import Namespace="TECCWAMembership.Models" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<fieldset id="contact-details" class="details-section rounded-corners">
    <h2>Contact Details</h2>
    <div class="title field">
        <%= Html.LabelFor(model => model.Title, new {@class="required"}) %>
        <%= Html.TextBoxFor(model => model.Title)%>
    </div>
    <div class="first-name field">
        <%= Html.LabelFor(model => model.FirstName, new { @class = "required" })%>
        <%= Html.TextBoxFor(model => model.FirstName) %>  
    </div>
    <div class="last-name field">
        <%= Html.LabelFor(model => model.LastName, new { @class = "required" })%>
        <%= Html.TextBoxFor(model => model.LastName) %>    
    </div>    
    <div class="errors">
        <%= Html.ValidationMessageFor(model => model.Title) %>  
        <%= Html.ValidationMessageFor(model => model.FirstName) %>  
        <%= Html.ValidationMessageFor(model => model.LastName) %> 
    </div>
    <div class="unit-number field">
        <%= Html.LabelFor(model => model.UnitNumber)%>
        <%= Html.TextBoxFor(model => model.UnitNumber)%>
    </div>    
    <div class="street-number field">
        <%= Html.LabelFor(model => model.StreetNumber, new { @class = "required" })%>
        <%= Html.TextBoxFor(model => model.StreetNumber)%>       
    </div>    
    <div class="street-name field">
        <%= Html.LabelFor(model => model.StreetName, new { @class = "required" })%>
        <%= Html.TextBoxFor(model => model.StreetName) %> 
    </div>    
    <div class="errors">
        <%= Html.ValidationMessageFor(model => model.StreetNumber) %>    
        <%= Html.ValidationMessageFor(model => model.StreetName) %>
    </div>
    <div class="suburb field">
        <%= Html.LabelFor(model => model.Suburb)%>
        <%= Html.TextBoxFor(model => model.Suburb, new { @class = "required" })%> 
    </div>    
    <div class="state field">
        <%= Html.LabelFor(model => model.State) %>
        <%= Html.DropDownListFor(model => model.State, MembershipForm.StatesAsList())%> 
    </div> 
    <div class="postcode field">
        <%= Html.LabelFor(model => model.Postcode, new { @class = "required" })%>
        <%= Html.TextBoxFor(model => model.Postcode)%> 
    </div>   
    <div class="errors">
        <%= Html.ValidationMessageFor(model => model.Suburb) %>  
        <%= Html.ValidationMessageFor(model => model.Postcode) %> 
    </div>
    <div class="contact-number field">
        <span class="required label-like new-line">Contact Number</span> 
    </div>
    <div class="home-number field">
        <%= Html.LabelFor(model => model.HomeNumber)%>
        <%= Html.TextBoxFor(model => model.HomeNumber)%>
    </div>   
    <div class="mobile-number field">
        <%= Html.LabelFor(model => model.MobileNumber)%>
        <%= Html.TextBoxFor(model => model.MobileNumber)%>
    </div>   
    <div class="work-number field">
        <%= Html.LabelFor(model => model.WorkNumber)%>
        <%= Html.TextBoxFor(model => model.WorkNumber)%>
    </div>  
    <div class="errors">
        <%= Html.ValidationMessage("ContactNumber") %>
    </div>
    <div class="email field">
        <%= Html.LabelFor(model => model.EmailAddress, new { @class = "required" })%>
        <%= Html.TextBoxFor(model => model.EmailAddress)%>     
    </div> 
    <div class="date-of-birth field">
        <%= Html.LabelFor(model => model.DateOfBirth, new { @class = "required" })%>
        <%= Html.TextBoxFor(model => model.DateOfBirth)%>   
    </div>    
    <div class="occupation field">
        <%= Html.LabelFor(model => model.Occupation) %>
        <%= Html.TextBoxFor(model => model.Occupation) %>   
    </div>           
    <div class="errors">
        <%= Html.ValidationMessageFor(model => model.EmailAddress)%>  
        <%= Html.ValidationMessageFor(model => model.DateOfBirth) %> 
    </div> 
    <div class="clear"></div>             
</fieldset>
<fieldset id="dietary-medical-alerts" class="details-section rounded-corners">
    <h2>Dietary/Medical Alerts</h2>
    <%= Html.TextBoxFor(model => model.DietaryMedicalAlerts)%>
    <div class="clear"></div>
</fieldset>            
<fieldset id="emergency-contacts" class="details-section rounded-corners">
    <h2>Emergency Contacts</h2> 
    <div id="emergency-contacts-container">
        <%= Html.EditorFor(model => model.EmergencyContacts) %>
    </div>
    <div class="button-panel"><%= Html.LinkToAddNestedForm("Add Contact", "#emergency-contacts-container", ".emergency-contact", "EmergencyContacts", typeof(EmergencyContact), new { id = "add-emergency-contact", @class = "icon-link rounded-corners-small" })%></div>
</fieldset>            
<fieldset id="vehicles" class="details-section rounded-corners">
    <h2>Vehicle Details</h2>
    <div id="vehicle-details-container">
        <%= Html.EditorFor(model => model.Vehicles) %>
    </div>
    <div class="button-panel"><%= Html.LinkToAddNestedForm("Add Vehicle", "#vehicle-details-container", ".vehicle", "Vehicles", typeof(Vehicle), new { id = "add-vehicle", @class = "icon-link rounded-corners-small" })%></div>
</fieldset>