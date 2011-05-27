<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.EmergencyContact>" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<div class="emergency-contact">
    <%= Html.LabelFor(model => model.Name)%>
    <%= Html.TextBoxFor(model => model.Name)%>
    <%= Html.LabelFor(model => model.ContactNumber)%>
    <%= Html.TextBoxFor(model => model.ContactNumber)%>                               
    <%= Html.LabelFor(model => model.Relationship)%>
    <%= Html.TextBoxFor(model => model.Relationship)%>                    
    <%= Html.ValidationMessageFor(model => model.Name)%>  
    <%= Html.ValidationMessageFor(model => model.ContactNumber)%>  
    <%= Html.ValidationMessageFor(model => model.Relationship)%>  
    <%= Html.LinkToRemoveNestedForm("Remove", "div.emergency-contact", new {@class="remove-emergency-contact"})%>
    <div class="clear"></div>
</div>