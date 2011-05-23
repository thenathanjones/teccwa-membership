<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TECCWAMembership.Models.MembershipForm>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TECCWA Membership Form
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% using (Html.BeginForm("Send", "MembershipForm")) {%>
        <fieldset>
            <div id="ContactDetailsSection">
                <h2>Contact Details</h2>
                <div class="form-fields">
                    <%= Html.LabelFor(model => model.Title) %>
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
                    <%= Html.DropDownListFor(model => model.State, new List<SelectListItem>()) %>                    
                    <%= Html.LabelFor(model => model.Postcode) %>
                    <%= Html.TextBoxFor(model => model.Postcode)%>
                </div>
                <div class="form-fields-errors">
                    <%= Html.ValidationMessageFor(model => model.Suburb) %>  
                    <%= Html.ValidationMessageFor(model => model.Postcode) %>  
                </div>
                <div class="form-fields">
                    Phone
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
                
            </div>
            <div id="DietaryMedicalAlertsSection">
                <h2>Dietary/Medical Alerts</h2>
            </div>            
            <div id="EmergencyContactsSection">
                <h2>Emergency Contacts</h2>
            </div>            
            <div id="VehicleDetailsSection">
                <h2>Vehicle Details</h2>
            </div>            
            <div id="PaymentDetailsSection">
                <h2>Payment Details</h2>
            </div>

            <input type="submit" value="Send" />
        </fieldset>
    <%}%>
</asp:Content>
