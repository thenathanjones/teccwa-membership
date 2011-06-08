<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.MembershipForm>" %>
<%@ Import Namespace="TECCWAMembership.Models" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<div id="contact-details" class="details-section rounded-corners">
    <h2>Contact Details</h2>
    <%= Html.ValidationMessageFor(model => model.Title) %>  
    <%= Html.ValidationMessageFor(model => model.FirstName) %>  
    <%= Html.ValidationMessageFor(model => model.LastName) %> 
    <%= Html.ValidationMessageFor(model => model.StreetNumber) %>  
    <%= Html.ValidationMessageFor(model => model.StreetName) %>
    <%= Html.ValidationMessageFor(model => model.Suburb) %>  
    <%= Html.ValidationMessageFor(model => model.Postcode) %> 
    <%= Html.ValidationMessage("ContactNumber") %>             
    <%= Html.ValidationMessageFor(model => model.EmailAddress)%>                 
    <%= Html.ValidationMessageFor(model => model.DateOfBirth) %>  
    <%= Html.LabelFor(model => model.Title, new {@class="required new-line"}) %>
    <%= Html.TextBoxFor(model => model.Title)%>
    <%= Html.LabelFor(model => model.FirstName, new { @class = "required" })%>
    <%= Html.TextBoxFor(model => model.FirstName) %>                    
    <%= Html.LabelFor(model => model.LastName, new { @class = "required" })%>
    <%= Html.TextBoxFor(model => model.LastName) %> 
    <%= Html.LabelFor(model => model.UnitNumber, new { @class = "new-line " })%>
    <%= Html.TextBoxFor(model => model.UnitNumber)%>
    <%= Html.LabelFor(model => model.StreetNumber, new { @class = "required" })%>
    <%= Html.TextBoxFor(model => model.StreetNumber)%>                    
    <%= Html.LabelFor(model => model.StreetName, new { @class = "required" })%>
    <%= Html.TextBoxFor(model => model.StreetName) %>  
    <%= Html.LabelFor(model => model.Suburb, new { @class = "new-line " })%>
    <%= Html.TextBoxFor(model => model.Suburb, new { @class = "required" })%>
    <%= Html.LabelFor(model => model.State) %>
    <%= Html.DropDownListFor(model => model.State, MembershipForm.StatesAsList())%>                    
    <%= Html.LabelFor(model => model.Postcode, new { @class = "required" })%>
    <%= Html.TextBoxFor(model => model.Postcode)%> 
    <p class="required label-like new-line">Contact Number</p>
    <%= Html.LabelFor(model => model.HomeNumber, new { @class = "little-label" })%>
    <%= Html.TextBoxFor(model => model.HomeNumber)%>
    <%= Html.LabelFor(model => model.MobileNumber, new { @class="little-label"})%>
    <%= Html.TextBoxFor(model => model.MobileNumber)%>                 
    <%= Html.LabelFor(model => model.WorkNumber, new { @class="little-label"})%>
    <%= Html.TextBoxFor(model => model.WorkNumber)%>
    <%= Html.LabelFor(model => model.EmailAddress, new { @class = "required new-line" })%>
    <%= Html.TextBoxFor(model => model.EmailAddress)%>     
    <%= Html.LabelFor(model => model.DateOfBirth, new { @class = "required new-line" })%>
    <%= Html.TextBoxFor(model => model.DateOfBirth)%>
    <%= Html.LabelFor(model => model.Occupation) %>
    <%= Html.TextBoxFor(model => model.Occupation) %>     
    <div class="clear"></div>             
</div>
<div id="dietary-medical-alerts" class="details-section rounded-corners">
    <h2>Dietary/Medical Alerts</h2>
    <%= Html.TextBoxFor(model => model.DietaryMedicalAlerts)%>
    <div class="clear"></div>
</div>            
<div id="emergency-contacts" class="details-section rounded-corners">
    <h2>Emergency Contacts</h2> 
    <div id="emergency-contacts-container">
        <%= Html.EditorFor(model => model.EmergencyContacts) %>
    </div>
    <div class="button-panel"><%= Html.LinkToAddNestedForm("Add Contact", "#emergency-contacts-container", ".emergency-contact", "EmergencyContacts", typeof(EmergencyContact), new { id = "add-emergency-contact", @class = "icon-link rounded-corners-small" })%></div>
</div>            
<div id="vehicles" class="details-section rounded-corners">
    <h2>Vehicle Details</h2>
    <div id="vehicle-details-container">
        <%= Html.EditorFor(model => model.Vehicles) %>
    </div>
    <div class="button-panel"><%= Html.LinkToAddNestedForm("Add Vehicle", "#vehicle-details-container", ".vehicle", "Vehicles", typeof(Vehicle), new { id = "add-vehicle", @class = "icon-link rounded-corners-small" })%></div>
</div>