<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.EmergencyContact>" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<div class="emergency-contact">
    <%= Html.ValidationMessageFor(model => model.Name)%>  
    <%= Html.ValidationMessageFor(model => model.ContactNumber)%>  
    <%= Html.ValidationMessageFor(model => model.Relationship)%>  
    <%= Html.LabelFor(model => model.Name, new { @class = "new-line" })%>
    <%= Html.TextBoxFor(model => model.Name, new {@class="EmergencyContactName"})%>
    <%= Html.LabelFor(model => model.ContactNumber)%>
    <%= Html.TextBoxFor(model => model.ContactNumber, new {@class="EmergencyContactNumber"})%>                               
    <%= Html.LabelFor(model => model.Relationship)%>
    <%= Html.TextBoxFor(model => model.Relationship, new {@class ="EmergencyRelationship"})%>                    
    <%= Html.LinkToRemoveNestedForm("Remove", "div.emergency-contact", new { @class = "remove-emergency-contact icon-link rounded-corners-small" })%>
    <div class="clear"></div>
</div>