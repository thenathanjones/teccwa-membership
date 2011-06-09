<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.EmergencyContact>" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<div class="emergency-contact">
    <div class="emergency-contact-name field">
        <%= Html.LabelFor(model => model.Name)%>
        <%= Html.TextBoxFor(model => model.Name)%>
    </div>
    <div class="emergency-contact-number field">
        <%= Html.LabelFor(model => model.ContactNumber)%>
        <%= Html.TextBoxFor(model => model.ContactNumber)%>
    </div>
    <div class="emergency-contact-relationship field">
        <%= Html.LabelFor(model => model.Relationship)%>
        <%= Html.TextBoxFor(model => model.Relationship)%>                 
    </div>
    <%= Html.LinkToRemoveNestedForm("Remove", "div.emergency-contact", new { @class = "remove-emergency-contact icon-link rounded-corners-small" })%>
    <div class="errors">
        <%= Html.ValidationMessageFor(model => model.Name)%>  
        <%= Html.ValidationMessageFor(model => model.ContactNumber)%>  
        <%= Html.ValidationMessageFor(model => model.Relationship)%>  
    </div>
    <div class="clear"></div>
</div>