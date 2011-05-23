<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TECCWAMembership.Models.MembershipForm>" %>
<%@ Import Namespace="TECCWAMembership.Models" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TECCWA Membership Form
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% using (Html.BeginForm("Send", "MembershipForm")) {%>
        <fieldset>
            <div id="contact-details" class="details-section">
                <h2>Contact Details</h2>
                <div class="form-fields">
                    <%= Html.LabelFor(model => model.Title, new { @class="A",title="Enter Name"}) %>
                    <%= Html.TextBoxFor(model => model.Title) %>
                    <%= Html.LabelFor(model => model.FirstName) %>
                    <%= Html.TextBoxFor(model => model.FirstName) %>                    
                    <%= Html.LabelFor(model => model.LastName) %>
                    <%= Html.TextBoxFor(model => model.LastName) %>
                </div>
                <div class="form-fields-errors">
                    <%= Html.ValidationMessageFor(model => model.Title) %>  
                    <%= Html.ValidationMessageFor(model => model.FirstName) %>  
                    <%= Html.ValidationMessageFor(model => model.LastName) %>  
                </div>
                <div class="form-fields">
                    <%= Html.LabelFor(model => model.UnitNumber) %>
                    <%= Html.TextBoxFor(model => model.UnitNumber)%>
                    <%= Html.LabelFor(model => model.StreetNumber) %>
                    <%= Html.TextBoxFor(model => model.StreetNumber) %>                    
                    <%= Html.LabelFor(model => model.StreetName) %>
                    <%= Html.TextBoxFor(model => model.StreetName) %>
                </div>
                <div class="form-fields-errors">
                    <%= Html.ValidationMessageFor(model => model.StreetNumber) %>  
                    <%= Html.ValidationMessageFor(model => model.StreetName) %>  
                </div>
                <div class="form-fields">
                    <%= Html.LabelFor(model => model.Suburb) %>
                    <%= Html.TextBoxFor(model => model.Suburb)%>
                    <%= Html.LabelFor(model => model.State) %>
                    <%= Html.DropDownListFor(model => model.State, MembershipForm.StatesAsList())%>                    
                    <%= Html.LabelFor(model => model.Postcode) %>
                    <%= Html.TextBoxFor(model => model.Postcode)%>
                </div>
                <div class="form-fields-errors">
                    <%= Html.ValidationMessageFor(model => model.Suburb) %>  
                    <%= Html.ValidationMessageFor(model => model.Postcode) %>  
                </div>
                <div class="form-fields">
                    <p>Phone</p>
                    <%= Html.LabelFor(model => model.HomeNumber)%>
                    <%= Html.TextBoxFor(model => model.HomeNumber)%>
                    <%= Html.LabelFor(model => model.MobileNumber)%>
                    <%= Html.TextBoxFor(model => model.MobileNumber)%>                 
                    <%= Html.LabelFor(model => model.WorkNumber)%>
                    <%= Html.TextBoxFor(model => model.WorkNumber)%>
                </div>
                <div class="form-fields-errors">
                    <%= Html.ValidationMessage("ContactNumber") %>  
                </div>
                <div class="form-fields">
                    <%= Html.LabelFor(model => model.EmailAddress) %>
                    <%= Html.TextBoxFor(model => model.EmailAddress)%>                
                </div>
                <div class="form-fields-errors">
                    <%= Html.ValidationMessageFor(model => model.EmailAddress)%>  
                </div>
                <div class="form-fields">
                    <%= Html.LabelFor(model => model.DateOfBirth,) %>
                    <%= Html.TextBoxFor(model => model.DateOfBirth)%>
                    <%= Html.LabelFor(model => model.Occupation) %>
                    <%= Html.TextBoxFor(model => model.Occupation) %>                    
                </div>
                <div class="form-fields-errors">
                    <%= Html.ValidationMessageFor(model => model.DateOfBirth) %>  
                    <%= Html.ValidationMessageFor(model => model.FirstName) %>  
                    <%= Html.ValidationMessageFor(model => model.LastName) %>  
                </div>   
                <div class="clear"></div>             
            </div>
            <div id="dietary-medical-alerts" class="details-section">
                <h2>Dietary/Medical Alerts</h2>
            </div>            
            <div id="emergency-contacts" class="details-section">
                <h2>Emergency Contacts</h2>
            </div>            
            <div id="vehicle-details" class="details-section">
                <h2>Vehicle Details</h2>
            </div>            
            <div id="payment-details" class="details-section">
                <h2>Payment Details</h2>
            </div>

            <input type="submit" value="Send" />
        </fieldset>
    <%}%>
</asp:Content>
